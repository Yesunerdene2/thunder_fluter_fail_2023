import 'dart:io';
void main(){
  print('Lesson day 04 = Loops');
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  int sum = 0;
  while(i<=number){
    if(i%2==0){
      print(i);
    }
    i = i + 1;
  }
}