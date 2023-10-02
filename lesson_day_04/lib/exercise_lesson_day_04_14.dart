import 'dart:io';
void main(){
  print('Lesson day 04 = Loops');
  print('Give me a number');
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  while(i <= number){
    print('Quadrat of $i is  ${i*i}     ');
    i = i +1;


  }
}