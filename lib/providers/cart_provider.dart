import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/databases/cart_database.dart';
import 'package:flutter_ecommerce/model/cart.dart';
import 'package:flutter_ecommerce/model/shoes.dart';

class CartProvider extends ChangeNotifier {
  final CartDatabase _db = CartDatabase();

  List<Cart> _items = [];

  CartProvider() {
    _items = _db.getCart();
  }

  List<Cart> get items => _items;

  void addToCart(Shoes shoes) {
    final index = _items.indexWhere(
        (items) => items.shoes.id == shoes.id
    );

    if(index == -1) {
      _items.add(Cart(shoes: shoes));
    } else {
      _items[index].quantity++;
    }

    _db.saveCart(_items);
    notifyListeners();
  }

  double get totalPrice =>
      _items.fold(0, (sum,item) =>
      sum + item.shoes.price * item.quantity
      );
}