import 'package:flutter_ecommerce/model/cart.dart';
import 'package:hive/hive.dart';

class CartDatabase {
  final Box<Cart> box = Hive.box<Cart>('cart_box');

  List<Cart> getCart() => box.values.toList();

  void saveCart(List<Cart> items) {
    box.clear();
    for(var item in items) {
      box.add(item);
    }
  }
}
