import 'dart:io';
void main(){
  print('Give me number');
  print('Lesson day 04 = Loops');
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  int mult = 1;
  while(i<=number){
    mult=mult*i;
    i = i + 1;
  }
  print('factorial of $number is $mult');

}