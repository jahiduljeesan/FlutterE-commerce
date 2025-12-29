import 'package:hive/hive.dart';
part 'shoes.g.dart';

@HiveType(typeId: 0)
class Shoes {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  double price;
  @HiveField(3)
  String imagePath;

  Shoes({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    });

  static List<Shoes> getShoeList() {
    List<Shoes> shoes = [];

    shoes.add(
      Shoes(
        id: 1,
        name: 'Air Jordan',
        price: 45.0,
        imagePath: 'lib/assets/icons/air_jordan.avif',
      )
    );

    shoes.add(
        Shoes(
            id: 2,
            name: 'Air Force',
            price: 60.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
        )
    );

    shoes.add(
        Shoes(
            id: 3,
            name: 'Nike Structure',
            price: 47.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
        )
    );

    shoes.add(
        Shoes(
            id: 4,
            name: 'Air Max Moto',
            price: 40.0,
            imagePath: 'lib/assets/icons/air_jordan.avif',
        )
    );

    return shoes;
  }
}