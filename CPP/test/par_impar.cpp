#include <iostream>
#include <string>

using namespace std;

int main() {
  for (int i = 0; i <= 100; i++) {
    string message;
    if (i % 2 == 0) {
      message = to_string(i) + " es par.";
    } else {
      message = to_string(i) + " es impar.";
    }
    cout << message << endl;
  }

  return 0;
}