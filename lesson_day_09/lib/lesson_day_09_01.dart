void main(){
final Car car = Car('blue');
car.drive();
final Car get = Car('red');
get.honk();
final Car bike = Car('green');
bike.honk();
}


class Vehicle {
  String color;

  Vehicle(this.color);
  void drive(){
    print("I'm a vehicle with $color");
  }
}

class Car extends Vehicle {
  Car ( super.color);
  void honk(){
    print("Beep Beep Beep");
  }

}