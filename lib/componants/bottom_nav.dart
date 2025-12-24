import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        curve: Curves.easeIn,
        haptic: true,
        gap: 8,
        activeColor: Colors.grey[900],
        iconSize: 24,
        tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        ),
      ]),
    );
  }
}
