import 'package:flutter_ecommerce/model/shoes.dart';
import 'package:hive/hive.dart';
part 'cart.g.dart';

@HiveType(typeId: 1)
class Cart{
  @HiveField(0)
  final Shoes shoes;
  @HiveField(1)
  int quantity;

  Cart({
    required this.shoes,
    this.quantity = 1
  });
}