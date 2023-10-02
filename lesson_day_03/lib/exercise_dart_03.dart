import'dart:io';
void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  if (a == b && c == b) {
    print("It's an equilateral triangle.");
  } else if (a == b || a == c || c ==b) {
    print("It's an isosceles triangle.");
  } else {
    print ("It's a scalene triangle.");
  }

}