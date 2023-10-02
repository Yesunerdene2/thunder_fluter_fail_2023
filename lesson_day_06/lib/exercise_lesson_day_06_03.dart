void main() {
  print('lesson day 06 functions');
  print(ex03(6, -5));
  print(ex03(-5, 6));
  print(ex03(0,12));
}
String ex03(int x, int y){
  int c = x * x - 2 * x * y + y * y;

  if (c < 10) {
    return 'this number less than 10';

  }else{
    return 'this number is greater than 10';
}
  }