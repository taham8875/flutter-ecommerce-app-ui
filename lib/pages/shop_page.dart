import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/components/search_bar.dart';
import 'package:flutter_ecommerce_app_ui/components/shoe_tile.dart';
import 'package:flutter_ecommerce_app_ui/models/shoe.dart';
import 'package:flutter_ecommerce_app_ui/data/shoes.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          const MySearchBar(),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Hot Takes 🔥',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              child: const Text('View All'),
            ),
          ]),
          SizedBox(
            height: 500,
            child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(
                      width: 30,
                    ),
                itemBuilder: (context, index) {
                  return ShoeTile(
                    shoe: Shoe(
                      name: shoes[index]['name'] as String,
                      price: shoes[index]['price'] as double,
                      picture: shoes[index]['picture'] as String,
                      description: shoes[index]['description'] as String,
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
