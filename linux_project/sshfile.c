#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
int main() {
    int id1 = fork();
if(id1==0) {
printf("i am 1st child %d \n",getpid());
execl("/usr/bin/mpstat", "mpstat", NULL);
return 1 ;
}
else {
if(fork()==0){
printf("i am 2nd child %d \n",getpid());
execl("/usr/bin/ps","ps",NULL);
return 1;
     }
else {
printf("i am parent %d \n",getpid());
wait(NULL);
wait(NULL);
}
}
}



