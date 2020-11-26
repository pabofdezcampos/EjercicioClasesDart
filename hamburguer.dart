import 'expirity.dart';
import 'product.dart';

enum meetType { Chicken, Beef }

class Hamburguer extends Product implements Expiration {
  bool vegetarian;
  meetType type;
  String burguerCkicken;

  set Vegetarian(String isVegetarian) {
    isVegetarian = isVegetarian;
  }

  String get isVegetarian {
    if (vegetarian = true) {
      return 'Vegetarian';
    } else {
      return 'No vegetarian';
    }
  }

  Hamburguer(
      String name, String description, double price, this.vegetarian, this.type)
      : super(name, description, price);

  void HamburguerChicken([String burguerChicken = 'Chicken']) {
    burguerCkicken = burguerChicken;
  }

  String printProduct() {
    return 'This product name´s $name and his description is: $description. His price is $price, and type is $type';
  }

  @override
  bool ExpirityProduct({bool expirity = true}) {
    return expirity;
  }
}
