import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      gap: 8,
      color: Colors.grey,
      activeColor: Colors.white,
      iconSize: 24,
      tabMargin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      duration: const Duration(milliseconds: 300),
      tabBackgroundColor: Colors.black,
      mainAxisAlignment: MainAxisAlignment.center,
      tabs: const [
        GButton(
          icon: Icons.shop,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_cart,
          text: 'Cart',
        ),
      ],
      selectedIndex: 0,
      onTabChange: (index) {
        onTabChange!(index);
      },
    );
  }
}
