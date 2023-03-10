#include <iostream>
#include <iomanip>
#include <stdexcept>
#include "Time.h"

using namespace std;

Time::Time(int hr, int min, int sec) {
    setTime(hr, min, sec);
}

void Time::setTime(int hr, int m, int s) {
    setHour(h);
    setMinute(m);
    setSecond(s);
}

void Time::setHour(int h) {
    hour = h;
}

void Time::setMinute(int m) {
    minute = m;;
}

void Time::setSecond(int s) {
    second = s;
}

int main(){
    Time t1;
    Time t2(2);
    Time t3(21, 34);
    Time t4(23, 45, 59);
    Time t5(21, 33, 29);
}