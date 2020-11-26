import 'expirity.dart';
import 'product.dart';

class shopProduct extends Product implements Expiration {
  DateTime expirtyDay;
  int stock;

  shopProduct(String name, String description, double price, this.expirtyDay,
      this.stock)
      : super(name, description, price);

  @override
  bool ExpirityProduct({bool expirity = true}) {
    return expirity;
  }
}
