import 'dart:math';
void main(){
  print('lessoon day 06');
  print(calculateCircleArea(10.5));
  print(calculateCircleArea(5.6));
  print(calculateCircleArea(3.0));

}


double calculateCircleArea(double radius){
  double sqr = 2*pi* radius* radius;
  return sqr;
}