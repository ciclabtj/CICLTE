#include <semaphore.h>
#include <sys/time.h>
#include "PHY/defs.h"


struct req_task{
    char *addr;
    int task_no; 
    /*original data byte*/
    unsigned int length;
    struct req_task *next;
    /*user info*/
    LTE_UL_eNB_HARQ_t *ulsch;
    struct timespec b_time;
    struct timespec e_time;
};

struct freelock_queue{
	struct req_task *head;
	struct req_task *tail;
};
struct block_info{
	int fd;
	char *buffer;
	pthread_t pid;
	sem_t sem_wt;
	sem_t sem_rd;
	int share_memory_pn;
	struct freelock_queue *wt_freeflq;
	struct freelock_queue *wt_submitflq;
};

int init_info(void);
struct req_task* get_task(void);
 void free_task(struct req_task* task);
 void single_read(struct req_task* task);
 int decoder_hardware(struct req_task* task, int len);
void release_info(void);
int get_position(unsigned short x);

