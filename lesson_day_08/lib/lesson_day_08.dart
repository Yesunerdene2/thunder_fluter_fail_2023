void main (){
  print('Lesson day - 08 - class construuctor');
  final Vehicle bicycle = Vehicle ('Bicycle', 3);
  print(bicycle.type);
  print(bicycle.wheels);
  final Vehicle car = Vehicle('Car', 4);
  print(car.type);
  print(car.wheels);
}

class Vehicle {
  String? type;
  int? wheels;

  Vehicle(String type, int wheels){
    this.type = type;
    this.wheels = wheels;
  }
}
