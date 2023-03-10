#include <iostream>
using namespace std;

#include "CreateAndDestroy.cpp"

CreateAndDestroy first(1, "(global before main)");

int main() {
    cout << "Object already created " << endl;

    return 0;
}