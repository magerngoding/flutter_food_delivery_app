// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
        top: 50,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank you for order!'),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            padding: const EdgeInsets.all(25),
            child: Consumer<Restaurant>(
              builder: (context, restaurant, child) =>
                  Text(restaurant.displayCartRecepit()),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Text('Estimated delivery time is: 4:10 PM'),
        ],
      ),
    );
  }
}
