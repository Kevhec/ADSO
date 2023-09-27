#include <iostream>
#include <string>

using namespace std;

int main () {
  double num;

  system("cls");

  cout << "Digite el número cuya tabla de multiplicar desee conocer\n";
  cin >> num;

  system("cls");

  for (int i = 1; i <= 10; i++) {
    string message;
    message = to_string(num) + " x " + to_string(i) + " = " + to_string(num * i);
  }

  return 0;
}