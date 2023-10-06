void main(){
  final Employee employee = Employee('john');
  employee.greet();
  final Employee person = Employee('george');
  person.greet();
  final Employee human = Employee('paul');
  human.greet();
}

class Person{
  String name;
  Person(this.name);
  void greet(){
    print("My name is $name");
  }
}

class Employee extends Person {
  Employee(super.name);
}