void main(){
  print('Dart class named constructor');
  final Building mnTower = Building('Mn tower', 20);
  print(mnTower.stock);
  print(mnTower.name);
  final Building defaultBuilding =
      Building.createDefaultBuilding('Default New Building');
}

class Building {
  String name;
  int stock;
  Building.create Building(this.name, this.stock);

}