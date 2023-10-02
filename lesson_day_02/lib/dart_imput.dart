import 'dart:io';
void main() {
  print('Get Input from Keyboard');
  String? input = stdin.readLineSync();
  print(input);
  print('You have given a number: $input');

  print('Say your name');
  String? myName = stdin.readLineSync();
  print('Your name is $myName');
  print('How old are you?');
  String? yourAge = stdin.readLineSync();
  print('Your age is $yourAge');
  print('Give me your first number');
  String? firstNumber = stdin.readLineSync();
  int a = int.parse(firstNumber!);
  print('Give me your second number');
  String? secondNumber = stdin.readLineSync();
  int b = int.parse(secondNumber!);
  print(firstNumber);
  print(secondNumber);
  print('sum: ${a + b} ');
}

}