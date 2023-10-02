import 'dart:io';
void main(){
  print('Lesson day 05 = Loops');
  print('imput');
  int number = int.parse(stdin.readLineSync()!);
  if( number <= 20 && number > 5) {
    int i = 1;
    while (i <= number) {
      if(i % 2 == 0){
        print('$i is even number');
      } else {
        print('$i is odd number');
      }
      i = i + 1;
    }
  }
  else {
    print('$number is even number');

  }

}