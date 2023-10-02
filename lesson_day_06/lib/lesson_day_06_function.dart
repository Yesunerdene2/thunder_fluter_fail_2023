import 'dart:math';
void main(){
  print('lesson day 06 - functions');
  print(sqrt(4));
  print(max(4, 5));
  print(maxFunc(10, -2));
}
  int maxFunc(int a, int b){
    if ( a> b) {
      return a;
    }else{
      return b;
    }
  }

 double giveGravity(){
  return 9.78;
  }