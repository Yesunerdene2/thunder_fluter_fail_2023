void main(){
  print('Lesson day - 08 - class');
  final Vehicle bycicle = Vehicle('Car', 4 );
  print(bycicle.type);
  print(bycicle.wheels);
  final Vehicle vehicle = Vehicle('Bike', 2);
  print(bycicle.type);
  print(bycicle.wheels);

}

class Vehicle{
String? type;
int? wheels;
Vehicle (String type, int wheels){
  this.type =type;
  this.wheels = wheels;
}
}