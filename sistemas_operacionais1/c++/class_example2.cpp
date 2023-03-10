#include <iostream>
#include <string>
using namespace std;

class GradeBook {
  public:
    GradeBook(string name) {
        courseName = name;
    }

    void setCourseName(string name) {
        courseName = name;
    }

    string getCourseName() {
        return courseName;
    }

    void displayMessage() {
        cout << "Curso de " << courseName << endl;
    }

  private:
    string courseName;
};

int main() {
    GradeBook gradeBook1("POO2");
    GradeBook gradeBook2("SO1");

    cout << gradeBook1.getCourseName() << endl;
    gradeBook2.displayMessage();
}