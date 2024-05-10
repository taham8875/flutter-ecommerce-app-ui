import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/pages/cart_page.dart';
import 'package:flutter_ecommerce_app_ui/pages/home_page.dart';
import 'package:flutter_ecommerce_app_ui/pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
