import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/models/cart.dart';
import 'package:flutter_ecommerce_app_ui/models/shoe.dart';
import 'package:provider/provider.dart';

class ShoeTile extends StatefulWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  void addShoeToCart(int id) {
    Provider.of<Cart>(context, listen: false).addShoeToCart(id);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Success'),
        content: const Text('Item added to cart'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(widget.shoe.picture, height: 300, width: 300),
            const SizedBox(height: 10),
            Text(widget.shoe.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('\$${widget.shoe.price}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                addShoeToCart(widget.shoe.id);
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
