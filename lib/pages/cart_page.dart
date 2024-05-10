import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/data/shoes.dart';
import 'package:flutter_ecommerce_app_ui/models/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            cart.getCartItems().isEmpty
                ? const Center(
                    child: Text('Cart is empty'),
                  )
                : Expanded(
                    child: ListView.separated(
                      itemCount: cart.getCartItems().length,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 30,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ListTile(
                            title: Text(
                              shoes[cart.getCartItems()[index]]['name']
                                  as String,
                            ),
                            subtitle: Text(
                              '\$${shoes[cart.getCartItems()[index]]['price']}',
                            ),
                            leading: Image.asset(
                              shoes[cart.getCartItems()[index]]['picture']
                                  as String,
                              height: 100,
                              width: 100,
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                cart.removeShoeFromCart(
                                    cart.getCartItems()[index]);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
