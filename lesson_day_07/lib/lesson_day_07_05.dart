void main(){
  final Car car = Car();
  car.make = 'bmw';
  car.model = 'Germany';
  car.year = 2023;
  


}


class Car{
  String? make;
  String? model;
  int? year;
  void  showCarInfo() {
    print('The car make is $make'.'The model is $model.''The year is $year.');
  }
}