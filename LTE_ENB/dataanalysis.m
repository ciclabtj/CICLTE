tx = zeros(512,14);
rx = zeros(512,14);
for sf = 1
    filename=sprintf('txdataF/enb_sf%d',sf);
    fp=fopen(filename,'r');
    for j = 0:13
        tmp = fscanf(fp,'%hd %hd',[2 512]);
        tmp = tmp';
        tx(:,j+1) = tmp(:,1) + tmp(:,2)*1i;
    end
    fclose(fp);
end


for sf = 1
 for j = 0:13
    filename=sprintf('rxdataF/rxdataF_sf%d_sym%d',sf,j);
    fp=fopen(filename,'r');
    tmp = fscanf(fp,'%hd %hd',[2 512]);
    tmp = tmp';
    fclose(fp);
    tmp(abs(tmp)<250)=0;
    tmp(tmp>=250)=362;
    tmp(tmp<=-250)=-362;
    rx(:,j+1) = tmp(:,1) + tmp(:,2)*1i;
 end
end