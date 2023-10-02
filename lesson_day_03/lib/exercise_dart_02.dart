import 'dart:io';

void main() {
  print('Enter number1');
  int a = int.parse(stdin.readLineSync()!);
  print('Enter number2');
  int b = int.parse(stdin.readLineSync()!);
  print('Enter number2');
  int c = int.parse(stdin.readLineSync()!);
  if (c > b && c > a) {
    print('$c is maximum');
  } else if (b > a && b > c) {
    print('$b is maximum');
  } else if (a > b && a > c) {
    print('$a is maximum');
  } else {
    print ('text error');
  }
}
