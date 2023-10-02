import 'dart:io';
void main(){
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 0 && age  < 12){
    print("You are a child.");
  }else  if (age >= 13 && age <19){
    print("You are a teen.");
  }else if (age >=20 && age < 64) {
    print("You are a teen.");
  }else if (age >=65) {
    print("You are a senior.");
  }else{
    print ( "Invaled age.");

  }


}