import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/shoes.dart';

class ShoesStyle extends StatelessWidget {
  final Shoes shoes; // 👈 good practice to mark as final

  const ShoesStyle({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(15),
      ),

    );
  }
}