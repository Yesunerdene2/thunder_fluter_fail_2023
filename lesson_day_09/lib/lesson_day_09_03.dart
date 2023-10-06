void main(){
  final Car car = Car ('red');
  car.drive();
  final Car bike = Car('white');
  bike.drive();
  final Car get = Car('black');
  get.drive();
}

class Vehicle{
  String color;
  Vehicle(this.color);
  void drive(){
    print("I'm a vehicle with $color");
  }
}

class Car extends Vehicle{
  Car (super.color);

}