void main(){
  final Circle circle = Circle('john',5);
  circle.about();
  final Circle shape = Circle('steph', 9);
  shape.about();
  final Circle person = Circle('klay', 11);
  person.about();

}

class Shape{
  String name;
  Shape(this.name);
  void about(){
    print("My name is $name");
  }
}

class Circle extends Shape{
  int radius;
  Circle (super.name,this.radius);
  @override
  void about(){
    print("My name is $name, I have a radius of $radius");
  }
}