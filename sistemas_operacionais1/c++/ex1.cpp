/*
Write a C++ program that contains different
versions of a function, called add, which is
able to perform the addition of two integers,
of one integer and one float, and three
integers. In the main function, call the three
function versions to show how it works
*/
#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

float add(int a, double b) {
    return double(a) + b; 
}

int add(int a, int b, int c) {
    return a + b + c;
}

int main() {
    cout << "3 + 5 = " << add(3, 5) << endl;
    cout << "4 + 4.5 = " << add(4, 4.5) << endl;
    cout << "1 + 2 + 3 = " << add(1, 2, 3) << endl;
}