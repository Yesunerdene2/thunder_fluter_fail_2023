void main(){
  print('Dart lass accerssors');
  final Animal horse = Animal('Horse',4, 'Mammal');
  print(horse.getName);
  print(horse.getAge);
  print(horse.getSpecies);
}

class Animal{
  String _name;
  int _age;
  String _species;
  String get getName {
    return _name;
  }
  int get getAge{
    return _age;
  }
  String get getSpecies{
    return _species;
  }
  set setName(String name){
    _name = name;
  }
  set setAge(int age){
    _age = age;
  }
  set setSpecies(String species){
    _species = species;
  }
  Animal(this._name, this._age, this._species);
}