#include <iostream>
#include <string>
using namespace std;

class GradeBook {
   public:
    void displayMessage() {
        cout << "Bem vindo ao grade book para " << courseName << endl;
    }
    
    // void displayMessage(string courseName) {
    //     cout << "Grade book de " << courseName << endl;
    // }

    void setCourseName(string name) {
        courseName = name;
    }

    string getCourseName() {
        return courseName;
    }
    private:
      string courseName;
};

int main() {
    GradeBook gradeBook;
    // gradeBook.displayMessage("CCO");

    string nomeCurso;
    cout << "Insira curso: ";
    getline(cin, nomeCurso);

    gradeBook.setCourseName(nomeCurso);
    gradeBook.displayMessage();
}