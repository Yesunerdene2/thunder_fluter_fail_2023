void main(){
  final Bike bike = Bike ('red');
  bike.drive();
  final Bike car = Bike ('blue');
  car.drive();
  final Bike get = Bike ('white');
  get.drive();
}

class Vehicle{
  String color;

  Vehicle(this.color);
  void drive(){
    print("I'm a vehicle with $color");
  }
}

class Bike extends Vehicle{
  Bike (super.color);
  @override
  void drive(){
    print("The bike is pedaling");
  }



}