import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/components/button_nav_bar.dart';
import 'package:flutter_ecommerce_app_ui/components/my_drawer.dart';
import 'package:flutter_ecommerce_app_ui/pages/cart_page.dart';
import 'package:flutter_ecommerce_app_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  var pages = const [ShopPage(), CartPage()];

  void onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: const MyDrawer(),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onTabChange: onTabChange),
    );
  }
}
