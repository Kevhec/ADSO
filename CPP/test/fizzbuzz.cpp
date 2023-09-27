#include <iostream>
#include <string>

using namespace std;

int main () {
  for (int i = 1; i <= 100; i++) {
    string message;
    if (i % 5 == 0 && i % 3 == 0) {
      message = "FizzBuzz";
    } else if (i % 3 == 0) {
      message = "Fizz";
    } else if (i % 5 == 0) {
      message = "Buzz";
    } else {
      message = to_string(i);
    }

    cout << message << endl;
  }

  return 0;
}