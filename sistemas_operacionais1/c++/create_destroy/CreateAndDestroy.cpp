#include <iostream>
#include <string>
using namespace std;

#include "CreateAndDestroy.h"

CreateAndDestroy::CreateAndDestroy(int ID, string messageString) {
    objectID = ID;
    message = messageString;

    cout << "Object " << objectID << "     run     " << message << endl;  
}

CreateAndDestroy::~CreateAndDestroy() {
    cout << (objectID == 1 || objectID == 6 ? "\n" : "");
    cout  << "object" << objectID << " destructor rusn      " << message << endl;
}
