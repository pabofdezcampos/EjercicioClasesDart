import 'dessert.dart';
import 'drink.dart';
import 'hamburguer.dart';

abstract class Product {
  String name;
  String description;
  double price;

  Product(String name, String description, double price) {
    this.name = name;
    this.description = description;
    this.price = price;
  }
}

void main(List<String> arguments) {
  print('Choose your menu');

  var burguer = Hamburguer('Crispey Chicken', 'Big burguer with some chips',
      3.99, false, meetType.Chicken);
  var drink =
      Drink('Coca Cola', 'Refreshing cole', 1.99, false, drinkType.Zero);
  var dessert = Dessert('Cheesecake', 'Luscious, rich and sweet dessert', 4.99,
      true, dessertType.Cheesecake);

  print(burguer.printProduct());
  print(drink.printProduct());
  print(dessert.printProduct());
}
