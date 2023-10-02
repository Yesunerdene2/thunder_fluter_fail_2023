import 'dart:io';
void main(){
  print('Lesson day 04 = Loops');
  print('Give me a number');
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  int sum = 0;
  while(i<=number){
    sum=sum+i;
    i = i + 1;

  }
  print('Sum from 1 to $number is $sum');
    }

