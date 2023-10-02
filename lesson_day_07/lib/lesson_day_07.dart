void main(){
  print('Lesson day - 07');
  print('Dart classes');
  final Human khangai = Human();
  khangai.name = 'khangaikhuu';
  khangai.age = 41;
  khangai.gender = 'man';
  print(khangai.name);
  final Human anna = Human();
  anna.name = 'anna';
  anna.age = 25;
  anna.gender = 'women';
  print(anna.name);
  final Human putin = Human();
  putin.name = 'putin';
  putin.age = 70;
  putin.gender = 'man';
  print(putin.name);
}


class Human {
  String name = 'human';
  int age = 0;
  int body = 1;
  int eyes = 2;
  int feet = 2;
  int hands = 2;
  String gender = 'woman';

}


