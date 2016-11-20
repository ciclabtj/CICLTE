#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <pthread.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include "hwdecode.h"


#define DEV_PATH "/dev/fpdma"
#define IOCTL_RPN 0
#define IOCTL_RESET 1
#define BLOCK_PN 8 //a blcok own 8 page, namely 32K. total 64 pages, 8 blcocks
#define PAGE_SIZE 4096
#define CAS(addr, oldval, newval)  __sync_bool_compare_and_swap(addr, oldval, newval)
//#define Debug
//#define MULTIUSER

int flag_end = 0;

struct block_info *hwinfo;

/*
 * get task from  queue head
 *dequeue
*/
struct req_task *fetch_task(struct freelock_queue *flqueue, char *name)
{
        struct req_task *next;
        //printf("fetch_task()- entry, func:%s\n", name);

        do{
			next = flqueue->head->next;
			if(next == NULL){
				//printf("queue is empty\n");
				return  NULL;
			}
			//only one task, tail pointer head
			CAS(&flqueue->tail, next, flqueue->tail->next);
        }while(!CAS(&flqueue->head->next, next, next->next));
		//only one task, tail pointer head
        CAS(&flqueue->tail, NULL, flqueue->head);
        //printf("fetch_task()- exit, func:%s\n", name);
        return next;
}


/*
 * add task to queue tail
 * enqueue
*/
void back_task(struct freelock_queue *flqueue, struct req_task *task, char *name)
{
        struct req_task *tail;
        //printf("back_task()- entry, func:%s\n", name);
        task->next = NULL;
        do{
            tail = flqueue->tail;
        }while(tail == NULL || !CAS(&tail->next, NULL, task));
        //not yet to end
        if(flqueue->tail->next != NULL) 
			CAS(&flqueue->tail, tail, task);
        //printf("back_task()- exit, func:%s\n", name);
}


void init_free_task(struct block_info *info, int block_num){
	int i ;
	struct req_task *task;
	struct freelock_queue *flqueue = info->wt_freeflq;
	printf("init_free_task()- entry\n");
	
	for(i = 0; i < block_num; i++){
		task = (struct req_task*)malloc(sizeof(struct req_task));
		task->task_no = i*BLOCK_PN;
		task->addr = info->buffer+i*BLOCK_PN*PAGE_SIZE;
		task->next = NULL;
		flqueue->tail->next = task;
		flqueue->tail = task;
	}
#ifdef Debug
	struct req_task *tmp = flqueue->head->next;
	int count = 0;
	while(tmp != NULL){
		count++;
		printf("the %d task\n", count);
		tmp = tmp->next;
	}
#endif
}

void free_task_queue(struct freelock_queue *flqueue){
	struct req_task *task;
	printf("free_task_queue()- entry\n");
	
	task = fetch_task(flqueue, "free_task_queue");
	while(task != NULL){
		free(task);
		task = fetch_task(flqueue, "free_task_queue");
	}
}

void free_info(struct block_info *info){
	printf("free_info() entry\n");
	pthread_cancel(info->pid);
	munmap(info->buffer, info->share_memory_pn*PAGE_SIZE);
	sem_destroy(&info->sem_wt);
	sem_destroy(&info->sem_rd);
	free_task_queue(info->wt_freeflq);
	free_task_queue(info->wt_submitflq);
	free(info->wt_freeflq->head);
	free(info->wt_freeflq);
	free(info->wt_submitflq->head);
	free(info->wt_submitflq);
	free(info);
	printf("free memory done\n");
}


/**
 * get_task
 * @return task from wt_freeflq
 */
 struct req_task* get_task(void){
    struct req_task* task;
    //printf("get_task entry\n");

    task = fetch_task(hwinfo->wt_freeflq, "get_task");
    //no left free task, have to wait
    while(task == NULL){
        //printf("get_task wait\n");
        sem_wait(&hwinfo->sem_wt);
        task = fetch_task(hwinfo->wt_freeflq, "get_task");
    }
#ifndef Debug
    memset(task->addr, 0, BLOCK_PN*PAGE_SIZE);
#endif
    return task;
}

/**
* get_task
* @return task to wt_freeflq
*/
inline void free_task(struct req_task* task){
    back_task(hwinfo->wt_freeflq, task, "free_task");
}



/**
* decoder interface to user
* don't block untill no task left on wt_freeflq
 * @param len: encode data byte
*/
inline int decoder_hardware(struct req_task* task, int len){
	/*original data byte*/
	task->length = (len - 16)>>5;
#ifndef Debug
	if(write(hwinfo->fd, (char *)&task->task_no, len) < 0)
            printf("write error\n");
#else
	usleep(20);
#endif
#ifdef MULTIUSER
	//printf("write done:%d\n", task->length);
	back_task(hwinfo->wt_submitflq, task, "decoder_hardware");
	sem_post(&hwinfo->sem_rd);
#endif
        return 1;
}


void print_data(LTE_UL_eNB_HARQ_t *udlsch){
/*   uint8_t harq_pid;
    uint32_t r, offset, Kr, Kr_bytes;
    harq_pid = udlsch->current_harq_pid;
    
    for (r=0;r<udlsch->harq_processes[harq_pid]->C;r++) {
        if (r<udlsch->harq_processes[harq_pid]->Cminus)
          Kr = udlsch->harq_processes[harq_pid]->Kminus;
        else
          Kr = udlsch->harq_processes[harq_pid]->Kplus;
        Kr_bytes = Kr>>3;
        
        //    printf("Segment %d : Kr= %d bytes\n",r,Kr_bytes);
        if (r==0) {
          memcpy(udlsch->harq_processes[harq_pid]->b,
                 &udlsch->harq_processes[harq_pid]->c[0][(udlsch->harq_processes[harq_pid]->F>>3)],
                 Kr_bytes - (udlsch->harq_processes[harq_pid]->F>>3)- ((udlsch->harq_processes[harq_pid]->C>1)?3:0));
          offset = Kr_bytes - (udlsch->harq_processes[harq_pid]->F>>3) - ((udlsch->harq_processes[harq_pid]->C>1)?3:0);
        }
        else {
          memcpy(udlsch->harq_processes[harq_pid]->b+offset,
                 udlsch->harq_processes[harq_pid]->c[r],
                 Kr_bytes- ((udlsch->harq_processes[harq_pid]->C>1)?3:0));
          offset += (Kr_bytes - ((udlsch->harq_processes[harq_pid]->C>1)?3:0));
        }
     }
    
     for (int ii = 0; ii < 46; ii++) {
        if(ii == 0){
            ;//printf("%d\n", (int)phy_vars_ue->dlsch_ue[0][0]->harq_processes[0]->b[ii]);

        }else{
            printf("%c", udlsch->harq_processes[0]->b[ii]);
        }

    }
    printf("\n");
 */   
}

/**
* thread to complete read
* put the task token from wt_submitflq queue into wt_freeflq queue; 
* don't stop untill no task left on wt_submitflq  
*/
void *thread_read(void *arg){
	struct block_info *info = (struct block_info *)arg;
	struct req_task* task;
	int i;
	printf("thread_read entry \n");
	
	while(true){
		task = fetch_task(info->wt_submitflq, "thread_read");
		if(flag_end) break;
		//no task
		while(task == NULL){
			//printf("thread_read wait\n");
			sem_wait(&info->sem_rd);
			//printf("thread_read wake up\n");
			task = fetch_task(info->wt_submitflq, "thread_read");
		}	
#ifndef Debug
                /*read*/
		if(read(info->fd, task->addr, 0) < 0)
                        printf("read error\n");
                //need change
                memcpy(task->ulsch->c[0], task->addr, task->length);
                clock_gettime(CLOCK_REALTIME, &task->e_time);
                printf("%d byte needs %dus\n", task->length, (task->e_time.tv_nsec-task->b_time.tv_nsec)/1000);
                print_data(task->ulsch);
		//printf("read done\n");	
#else
		usleep(20);
		printf("read done:%d\n", task->length);
#endif

		back_task(info->wt_freeflq, task, "thread_read");
		sem_post(&info->sem_wt);
	}
	
	return (void*)0;
}

/*
 * single read
 */
inline void single_read(struct req_task* task){
        if(read(hwinfo->fd, task->addr, 0) < 0)
                printf("read error\n");
}


int init_info(void){
	int ret = 0;
	struct req_task *head;
	printf("init_info() entry\n");

        
	hwinfo = (struct block_info*)malloc(sizeof(struct block_info));
	hwinfo->wt_freeflq = (struct freelock_queue*)malloc(sizeof(struct freelock_queue));
	head = (struct req_task*)malloc(sizeof(struct req_task));
	head->next = NULL;
	hwinfo->wt_freeflq->head = hwinfo->wt_freeflq->tail = head;
	
	hwinfo->wt_submitflq = (struct freelock_queue*)malloc(sizeof(struct freelock_queue));
	head = (struct req_task*)malloc(sizeof(struct req_task));
	head->next = NULL;
	hwinfo->wt_submitflq->head = hwinfo->wt_submitflq->tail = head;

#ifndef Debug	
	hwinfo->fd = open(DEV_PATH, O_RDWR);
	if (hwinfo->fd == -1){
	    printf("open %s failed \n", DEV_PATH);
            return -1;
        }
	
	ret = ioctl(hwinfo->fd, IOCTL_RPN, &hwinfo->share_memory_pn);
        ret = ioctl(hwinfo->fd, IOCTL_RESET, NULL);
	if(ret)
		printf("ioctl failed, error: %d\n", ret);
	printf("share memory pn:%d\n", hwinfo->share_memory_pn);  
	
	hwinfo->buffer = (char*)mmap(NULL, hwinfo->share_memory_pn*PAGE_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, hwinfo->fd, 0);
	//printf("mmap buffer:%x\n", info->buffer);  
#else
	hwinfo->share_memory_pn = 64;
        hwinfo->buffer = (char *)malloc(8*32*1024);
#endif	

	sem_init(&hwinfo->sem_wt, 0, 0);
	sem_init(&hwinfo->sem_rd, 0, 0);
	init_free_task(hwinfo, hwinfo->share_memory_pn/BLOCK_PN);
#ifdef MULTIUSER
	ret = pthread_create(&hwinfo->pid, NULL, thread_read, hwinfo);
	if(ret != 0){   
            printf("Create pthread error!\n");
            exit(1);
        }  
#endif
	return ret;
}



void release_info(void){
	flag_end = 1;
    pthread_join(hwinfo->pid, NULL);
	free_info(hwinfo);
}

int get_position(unsigned short x){
	int n = 1;
	if(x == 0)return -1;
	if((x >> 8) == 0){
		n = n + 8;
		x = x << 8;
	}
	if((x >> 12) == 0){
		n = n + 4;
		x = x << 4;
	}
	if((x >> 14) == 0){
		n = n + 2;
		x = x << 2;
	}
	if((x >> 15) == 0){
		n = n + 1;
		x = x << 1;
	} 
	n = n - (x >> 15);
	return 16 - n;
}