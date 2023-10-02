import 'dart:io';
void main(){
  print('Lesson day 05 = Loops');
  print('input');
  int number = int.parse(stdin.readLineSync()!);
  if ( number < 20);
  int i = 1;
  while (i <= number){
    print(i + 5);
    i = i+ 1;
  }
}