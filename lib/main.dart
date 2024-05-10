import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/models/cart.dart';
import 'package:flutter_ecommerce_app_ui/pages/cart_page.dart';
import 'package:flutter_ecommerce_app_ui/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        home: const HomePage(),
        routes: {
          '/home': (context) => const HomePage(),
          '/cart': (context) => const CartPage(),
        },
      ),
    );
  }
}
