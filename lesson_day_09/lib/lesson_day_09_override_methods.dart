void main(){
  final Child child = Child();
  child.show();
  final Parent uvgunkhuu = Parent();
  uvgunkhuu.showHair();
final Child khangai = Child();
khangai.showHair();
}

class Parent{
  void show(){
    print("I' m from Parent class");
  }
  void showHair(){
    print("I'm have a short hair");

  }
}



class Child extends Parent{
  @override
  void show(){
    print("I'm from Child class, overriding Parent's method");

  }
}


