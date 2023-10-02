import 'dart:io';
import 'dart:math';

void main() {
  print('Lesson day 05 = Loops');
  Random random = new Random();
  int randomNumber = random.nextInt(100);
  int i = 1;

  bool found = false;
  while (!found) {
    print('Too oruul: ');
    int number = int.parse(stdin.readLineSync()!);

    if (randomNumber < number) {
      print("It is warm");
    } else if (randomNumber > number) {
      print("It is cold");
    } else {
      print("Yes you guessed the number");
      found = true;
    }
    i++;
    if (i == 10) {
      print('You are lost');
      found = true;
    }
  }
}
