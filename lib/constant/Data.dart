import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Map> categories = [
  {
    "category": "Fresh fruit & vegetables",
    "image": "assets/images/fruit.png",
    "subcategory": [
      {
        "id": 1,
        "title": "Organic Bananas",
        "image": "assets/images/banana.png",
        "price": 4.99,
        "description": " 7pcs ,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 2,
        "title": "Red Apple",
        "image": "assets/images/apple.png",
        "price": 4.99,
        "description": "1 Kg ,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 3,
        "title": "Strawberry",
        "image": "assets/images/banana.png",
        "price": 5.99,
        "description": "12 pcs ,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 4,
        "title": "Red Capsicum",
        "image": "assets/images/bellpaper.png",
        "price": 8.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 5,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 6,
        "title": "cucumber",
        "image": "assets/images/banana.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ],
  },
  {
    "category": "Cooking oil and ghee",
    "image": "assets/images/oil.png",
    "subcategory": [
      {
        "id": 7,
        "title": "Red Capsicum",
        "image": "assets/images/bellpaper.png",
        "price": 8.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 8,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 9,
        "title": "cucumber",
        "image": "assets/images/banana.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ]
  },
  {
    "category": "Meat and fish",
    "image": "assets/images/meat.png",
    "subcategory": [
      {
        "id": 10,
        "title": "Beef Bone",
        "image": "assets/images/beef.png",
        "price": 4.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 11,
        "title": "Boiler Chicken",
        "image": "assets/images/chicken.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 12,
        "title": "Fish",
        "image": "assets/images/chicken.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ]
  },
  {
    "category": "Bakery and snacks",
    "image": "assets/images/bakery.png",
    "subcategory": [
      {
        "id": 13,
        "title": "Red Capsicum",
        "image": "assets/images/bellpaper.png",
        "price": 8.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 14,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 15,
        "title": "cucumber",
        "image": "assets/images/banana.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ]
  },
  {
    "category": "daily eggs",
    "image": "assets/images/eggs.png",
    "subcategory": [
      {
        "id": 16,
        "title": "Red Capsicum",
        "image": "assets/images/egg1.png",
        "price": 8.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 17,
        "title": "Ginger",
        "image": "assets/images/egg2.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 18,
        "title": "cucumber",
        "image": "assets/images/egg3.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ]
  },
  {
    "category": "Bevrages",
    "image": "assets/images/bevrages.png",
    "subcategory": [
      {
        "id": 19,
        "title": "limbu sarbat",
        "image": "assets/images/b1.png",
        "price": 8.56,
        "description": "6 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 20,
        "title": "red wine",
        "image": "assets/images/b2.png",
        "price": 9.99,
        "description": "8 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 21,
        "title": "sprite",
        "image": "assets/images/b3.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
      {
        "id": 22,
        "title": "coco cola",
        "image": "assets/images/b4.png",
        "price": 4.99,
        "description": "3 pcs,Price",
        "favourite": false,
        "quantity": 1,
      },
    ]
  }
];
final cartprovider =
    ChangeNotifierProvider<Cartprovider>((ref) => Cartprovider());

class Cartprovider extends ChangeNotifier {
  double totalprice = 0;
  List<Map> cartitems = [];

  void addtocart(Map item) {
    if (!cartitems.contains(item)) {
      cartitems.add(item);
      gettotal();
      notifyListeners();
      print(cartitems);
    }
  }

  void removecart(Map item) {
    cartitems.remove(item);
    gettotal();
    notifyListeners();
  }

  void clearcart() {
    cartitems.clear();
    gettotal();
    print(cartitems);
    notifyListeners();
  }

  void incrementcounter(int index) {
    cartitems[index]["quantity"]++;
    gettotal();
    notifyListeners();
  }

  void decrementcounter(int index) {
    cartitems[index]["quantity"]--;
    gettotal();
  }

  void gettotal() {
    totalprice = cartitems
        .map<double>((e) => e["price"] * e["quantity"])
        .fold(0, (value, element) => value + element);

    notifyListeners();
  }
}

List<Map> favouriteitems = [];
