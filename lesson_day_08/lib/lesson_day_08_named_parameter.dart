void main(){
  print('Lesson day 08: named parameter constructor');
  final Point origin = Point(0.0,0.0);
  print(origin);
  print('The Origin of the Point is : x = ${origin.x} y = ${origin.y}');
  final Rectangle quadrat = Rectangle (a: 5.0, b: 5.0);

}

class Point{
  double x;
  double y;
  Point({required this.x required this.y});
  @override Rectangle {
    String toString(){
      return The side of the rectangle is $s, and $b;}
}
class Rectangle {
    double a;
    double b;
    Rectangle({required this.a required.b});
}
}