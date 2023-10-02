import 'dart:io';
void main(){
  print('Lesson day 04 = Loops');
  print('Give me a number');
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  int quadrat = 1;
  while (i <=number){
    quadrat= i*i;
    if (quadrat %2 == 0){
      print('Quadrat of is $i is $quadrat this number is even');
      i = i +1;

    }
    else {
      print('Quadrat of is $i is $quadrat this number is odd');
      i = i +1;

    }
  }
}