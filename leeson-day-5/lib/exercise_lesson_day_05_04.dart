import 'dart:io';
void main(){
  print('Lesson day )5 = Loops');
  print('imput');
  int number = int.parse(stdin.readLineSync()!);
  if ( number <= 20){
    int i =1;
    while(i <= number){
      print(i * (-1));
      i = i + 1;

    }
  }
}