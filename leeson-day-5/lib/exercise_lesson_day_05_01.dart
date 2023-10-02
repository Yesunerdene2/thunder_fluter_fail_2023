import 'dart:io';
void main(){
  print('Lesson day 05 = Loops');
  int number = int.parse(stdin.readLineSync()!);
  print('n=$number');
  for(int i = 1; i <= number; i++){
    String row = '';
    for(int j = number-i; j > 0; j--){
      row += ' ';
    }
    for ( int k = 1; k <= i; k++){
      row += '$i ';
    }
    print(row);
  }
  }



