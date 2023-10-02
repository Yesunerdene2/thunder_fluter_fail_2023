import 'dart:io';
void main(){
print('Lesson day 05 = Loops');
print('imput');
int number = int.parse(stdin.readLineSync()!);
if(number < 20) {
  int i = 1;
  while (i <= number) {
    print('While Loop');
    i = i + 1;
  }
} else {
  print('arai baga too oruul');
}

}
