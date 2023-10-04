import 'lesson_day_08_exercise.dart';

void main(){
  print('dart test class');
  final Animal horse = Animal('Horse', 4,'Mammal');
  print(horse.getName);
  print(horse.getAge);
  print(horse.getSpecies);
  horse.setName = 'Ulaan huren';
  horse.setAge = 5;
  horse.setSpecies = 'Human Natured';
  print(horse.getName);
  print(horse.getAge);
  print(horse.getSpecies);
}