void main(){
  final Rectangle rectangle = Rectangle();
rectangle.height = 5;
rectangle.width = 10;
print(rectangle.sqr());

}



class Rectangle{
  double? width;
  double? height;
  double sqr (){
    return (width! * height!);

  }
}