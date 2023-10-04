

void main(){
  print('Lesson day - 08 class name constructor');
  final User john = User ('john', 30);
  print(john.age);
  print(john.name);
  print(john);
}

class User{
  String name;
  int age;
  User(this.name,this.age);

  @override
  String toString() {
    // TODO: implement toString
    return 'User{name:$name,age :$age}';
  }
}