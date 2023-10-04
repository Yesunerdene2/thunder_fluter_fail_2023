void main() {
  print('Lesson day 08 class');

  // square
  final Shape square = Shape('shape square');
  print(square);

  // circle
  final Shape circle = Shape('shape circle');
  print(circle);

  // rectangle
  final Shape rectangle = Shape('shaoe rectangle');
  print(rectangle);


}

class Shape {
  String type;
  Shape(this.type);

  @override
  String toString() {
    return 'Shape{type:$type}';
  }

  void describe() {
    print('This is $type');
  }

  bool isTypeOf(String shapeType) {
    return shapeType == type;
  }
}
