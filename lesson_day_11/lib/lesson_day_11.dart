

import 'dart:math';

void main() {
  final Electronics electronics = Electronics(1, 'Laptop', 1000.0);
  electronics.displayDetails();
  electronics.category();
  final Clothing clothing = Clothing(2, 'T-Shirt', 20.0);
  clothing.displayDetails();
  clothing.category();
  final Groceries groceries = Groceries(3, 'Rice', 10.0);
  groceries.displayDetails();
  groceries.category();
}

abstract class Product {
  int id;
  String name;
  double price;
  Product(this.id, this.name, this.price);
  void displayDetails();
  void category();
}

class Electronics extends Product {
  Electronics(super.id, super.name, super.price);

  @override
  void displayDetails() {
    print('ID:$id, Name: $name, Price: $price');
  }

  @override
  void category() {
    print('Category:Electronics');
  }
}

class Clothing extends Product{
  Clothing(super.id,super.name,super.price);

  @override
  void category() {
    print('Category:Clothing');
  }

  @override
  void displayDetails() {
    print('ID:$id, Name: $name, Price: $price');
  }

}

class Groceries extends Product{
  Groceries(super.id,super.name,super.price);

  @override
  void category() {
    print('Category:Gloceries');
  }

  @override
  void displayDetails() {
    print('ID:$id, Name: $name, Price: $price');
  }

}
