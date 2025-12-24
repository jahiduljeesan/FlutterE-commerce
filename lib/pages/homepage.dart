import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/componants/bottom_nav.dart';
import 'package:flutter_ecommerce/pages/cart_page.dart';
import 'package:flutter_ecommerce/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  int _selectedIndex = 0;
  void parseBottomNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> navPages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => parseBottomNav(index),
      ),
      body: navPages[_selectedIndex],
    );
  }
}
