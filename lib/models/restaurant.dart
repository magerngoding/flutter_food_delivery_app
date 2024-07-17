import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    Food(
      name: 'Classic Cheeseburger',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/burger1.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Double Cheeseburger',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/burger2.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Melted Burger',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/burger3.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),

    // salads
    Food(
      name: 'Greek Salad',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/salad1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Asan Sesame Salad',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/salad2.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Quinoa Salad',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/salad3.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),

    // sides
    Food(
      name: 'Sides 1',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/sides1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Sides 2',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/sides2.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Sides 3',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/sides3.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),

    // desserts
    Food(
      name: 'Desserts 1',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/desserts1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Desserts 2',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/desserts2.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Desserts 3',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/desserts3.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),

    // drinks
    Food(
      name: 'Drinks 1',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/drinks1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Drinks 2',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/drinks2.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Drinks 3',
      description: 'A jucy beef paty with melted cheedar',
      imagePath: 'assets/drinks3.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
  ];

  // G E T T E R S
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // O P E R A T I O N S

  // - user cart
  final List<CartItem> _cart = [];

  // - add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // - remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // - get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal + cartItem.quantity;
    }
    return total;
  }

  // - get total nummber of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0; // deklarasi

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // - clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // H E L P E R S

  // -> generate a receipt // bikin hasil resep untuk struk
  String displayCartRecepit() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formatDate =
        DateFormat('yyyy-MM--dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formatDate);
    receipt.writeln(); // writeln adalah garis baru atau enter
    receipt.writeln('----------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formPrice(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln('     Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }

    receipt.writeln('----------------');
    receipt.writeln();
    receipt.write('Total Items: ${getTotalItemCount()}');
    receipt.write('Total Price: ${_formPrice(getTotalPrice())}');

    return receipt.toString();
  }

  // format double value into money
  String _formPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  // format list of addon into a string sumary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => '${addon.name} (${_formPrice(addon.price)})')
        .join(',');
  }
}
