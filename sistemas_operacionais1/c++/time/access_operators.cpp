#include <iostream>
using namespace std;

class Count {
  public:
    void setX(int value) {
        x = value;
    }

    void print() {
        cout << x << endl;
    }
  private:
    int x;
};

int main() {
    Count counter;
    Count *counter_ptr = &counter; // pointer to counter
    Count &counter_ref = counter;  // referencia para counter

    counter.setX(1);
    counter.print();

    counter_ref.setX(2);
    counter_ref.print();

    counter_ptr->setX(3);
    counter_ptr->print();

    return 0;
}