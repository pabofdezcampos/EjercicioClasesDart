import 'expirity.dart';
import 'product.dart';

enum drinkType { Normal, Ligth, Zero }

class Drink extends Product implements Expiration {
  bool oh;
  drinkType type;

  Drink(String name, String description, double price, this.oh, this.type)
      : super(name, description, price);

  void Alcohol({bool oh = true}) {
    this.oh = oh;
  }

  String printProduct() {
    return 'This product name´s $name and his description is: $description. His price is $price, and type is $type';
  }

  @override
  bool ExpirityProduct({bool expirity = true}) {
    return expirity;
  }
}
