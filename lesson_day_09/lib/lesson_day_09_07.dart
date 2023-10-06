void main(){

}

class Gadget{
  String name;
  String state;
  Gadget(this.name,this.state);
  void turnOn(){
    print("Charging Gadget");

  }
}

class Smartphone extends Gadget{
  Smartphone (super.name, super.state);

  @override
  void turnOn() {
    super.turnOn();
    print("Smartphone turns on");
  }

}
