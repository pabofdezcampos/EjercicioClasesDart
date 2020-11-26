import 'expirity.dart';
import 'product.dart';

enum dessertType { Cheesecake, Red_Velvet, Carrotcake }

class Dessert extends Product implements Expiration {
  bool celiac;
  dessertType type;

  Dessert(String name, String description, double price, this.celiac, this.type)
      : super(name, description, price);

  String printProduct() {
    return 'This product name´s $name and his description is: $description. His price is $price, and type is $type';
  }

  @override
  bool ExpirityProduct({bool expirity = true}) {
    return expirity;
  }
}
