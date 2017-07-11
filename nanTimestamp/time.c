//http://code.kx.com/wiki/Cookbook/ExtendingWithC#High_Precision_wall_time_on_Linux
#include"k.h"
#include<time.h>

//this is the version from the kx wiki
//K x param is not used as this is going to be nilladic function
K getTime(K x){
  struct timespec ts;
  clock_gettime(CLOCK_REALTIME,&ts);
  R ktj(-KP,(ts.tv_sec-10957*86400)*1000000000LL+ts.tv_nsec);}

//other experiments with different clock
K getTimeMonotic(K x){
        struct timespec ts;
        clock_gettime(CLOCK_MONOTONIC,&ts);
        R ktj(-KP,(ts.tv_sec-10957*86400)*1000000000LL+ts.tv_nsec);
}


K getTimeTweaked(K x){
        struct timespec ts;
        clock_gettime(CLOCK_REALTIME,&ts);
        R ktj(-KP,(ts.tv_sec-946684800)*1000000000LL+ts.tv_nsec);
}

K getTimeMonTweaked(K x){
        struct timespec ts;
        clock_gettime(CLOCK_MONOTONIC,&ts);
        R ktj(-KP,(ts.tv_sec-946684800)*1000000000LL+ts.tv_nsec);
}


K getTOD(K x){
        struct timespec ts;
        gettimeofday(&ts, NULL);
        R ktj(-KP,(ts.tv_sec-10957*86400)*1000000000LL+ts.tv_nsec);
}
