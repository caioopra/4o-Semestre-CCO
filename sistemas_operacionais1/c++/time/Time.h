#ifndef TIME_H
#define TIME_H

class Time {
   public:
    Time(int = 0, int = 0, int = 0);
    void setTime(int, int, int);  // hora, minuto, sec
    void printUniversal();
    void printStandard();

    void setHour(int);
    void setMinute(int);
    void setSecond(int);

   private:
    int hour;
    int minute;
    int second;
};  // end class Time

#endif