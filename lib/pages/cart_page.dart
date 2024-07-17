// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart buttton
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Are you sure want to clear the cart?'),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel'),
                        ),

                        // yess button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text('Cart is empty...'),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];

                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // button to pay
              MyButton(
                text: 'Go to Checkout',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
