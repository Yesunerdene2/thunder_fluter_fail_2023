void main() {
  final Calculator calculator = Calculator();
  print(calculator.addition(10, 20));
  print(calculator.subtraction(20, 15));
  print(calculator.multiplication(10, 5));
  print(calculator.division(20, 4));
}

class Calculator {
  int addition(int a, int b) {
    return a + b;
  }

  int subtraction(int a, int b) {
    return a - b;
  }

  int multiplication(int a, int b) {
    return a * b;
  }

  double division(int a, int b) {
    return a / b;
  }
}
