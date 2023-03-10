#include <iostream>
using namespace std;

int square(int x) {
    cout << "Quadrado do int " << x << " = ";
    return x * x;
}

double square(double y) {
    cout << "Quadrado do double " << y << " = ";
    return y * y;
}

int main() {
    cout << square(7) << endl;
    cout << square(7.5) << endl;
}