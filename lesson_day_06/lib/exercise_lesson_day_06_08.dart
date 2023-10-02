import 'dart:math';
void main(){
  print('lesson day 06 function');
  print(calculateDiameter(10.5));
  print(calculateDiameter(5.6));
  print(calculateDiameter(3.0));

}

double calculateDiameter(double radius) {
  double diameter = radius * 2;
  return diameter;

}