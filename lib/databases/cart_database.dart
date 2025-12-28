import 'package:flutter_ecommerce/model/shoes.dart';
import 'package:hive/hive.dart';

class CartDatabase {
  List<Shoes> shoesCart = [];
  late final Box _box;

  CartDatabase() {
    _box = Hive.box('cart_box');
  }

  void loadData() {
    shoesCart = _box.get('TASKS',defaultValue: []) ?? [];
  }

  void updateData() {
    _box.put('TASKS',shoesCart);
  }
}