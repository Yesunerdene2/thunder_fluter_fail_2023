import 'dart:io';
void main(){
  int a = 8;
  int b = 6;
  if(a < b) {
    print('b is greater than a');
  } else {
    print('a is greater than b');
  }
  print('give me a number a');
  String? input = stdin.readLineSync();
  a = int.parse(input!);
  print('give me a number b');
  input = stdin.readLineSync();
  b = int.parse(input!);
  }
