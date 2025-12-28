import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/databases/cart_database.dart';
import 'package:flutter_ecommerce/model/shoes.dart';
import 'package:flutter_ecommerce/styles/shoes_style.dart';
import 'package:hive/hive.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //reference the box
  final _box = Hive.box('cart_box');
  CartDatabase db = CartDatabase();

  List<Shoes> shoes = Shoes.getShoeList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _searchOption(),
          const SizedBox(height: 20,),
          Text(
            'Every one flies, some fly longer then others',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              decorationStyle: TextDecorationStyle.dotted
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Deals🔥',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 350,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return ShoesStyle(shoes: shoes[index]);
              },
              itemCount: shoes.length,
            ),
          )
        ],
      ),
    );
  }

  Container _searchOption() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search here...',
            style: TextStyle(color: Colors.black45, fontSize: 20),
          ),
          Icon(Icons.search, color: Colors.black45),
        ],
      ),
    );
  }
}
