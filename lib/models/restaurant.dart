import 'package:flutter/material.dart';

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

  // GETTERS
  List<Food> get menu => _menu;

  // OPERATIONS

  // HELPERS
}
