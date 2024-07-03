// ignore_for_file: public_member_api_docs, sort_constructors_first

// food item
class Food {
  final String name; // Chrrse burgrt
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese_burger.png
  final double price; // 4.99
  final FoodCategory category; // burger
  List<Addon> availableAddons; // [extra cheese, sauce, extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}
