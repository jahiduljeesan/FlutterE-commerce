
import 'package:flutter/material.dart';

class Shoes {
  String name;
  double price;
  String imagePath;
  Color bgColor;

  Shoes({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.bgColor});

  static List<Shoes> getShoeList() {
    List<Shoes> shoes = [];

    shoes.add(
      Shoes(
        name: 'Air Jordan',
        price: 45.0,
        imagePath: 'lib/assets/icons/air_jordan.avif',
        bgColor: Colors.white
      )
    );

    shoes.add(
        Shoes(
            name: 'Air Force',
            price: 60.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
            bgColor: Colors.white
        )
    );

    shoes.add(
        Shoes(
            name: 'Nike Structure',
            price: 47.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
            bgColor: Colors.white
        )
    );

    shoes.add(
        Shoes(
            name: 'Air Max Moto',
            price: 40.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
            bgColor: Colors.white
        )
    );

    return shoes;
  }
}