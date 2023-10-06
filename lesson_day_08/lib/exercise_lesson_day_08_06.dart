void main(){
  print('Lesson day 08 class');

  final Animal dog = Animal('dog' ,2);
  print(dog);
dog.makeSound();
}


class Animal{
  String name;
  int age;

  Animal(this.name,this.age);

  @override
  String toString() {
    // TODO: implement toString
    return 'Animal{name:$name, age:$age}';
  }
  void makeSound(){
    print("Nohoi makes sound");
  }
}