import 'dart:convert';

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

final cartProvider = StateNotifierProvider<Cartprovider, List<Product>>(
    (ref) => Cartprovider([]));

class Cartprovider extends StateNotifier<List<Product>> {
  Cartprovider(List<Product> state) : super(state);

  void addtocart(Product item) {
    if (!state.contains(item)) {
      state = [...state, item];
    }
  }

  void removeFromcart(Product item) {
    state = [
      for (final product in state)
        if (item != product) product,
    ];
  }

  void addAll(List<Product> item) {
    state = [...state, ...item];
  }

  void clearAll() {
    state = [];
  }

  double get gettotal {
    return state
        .map<double>((e) => double.parse((e.price * e.quantity).toString()))
        .fold<double>(0, (value, element) => value + element);
  }

  void increaseQuantity(int index) {
    final _item = List.of(state)[index];
    final _updated = _item.copyWith(quantity: _item.quantity + 1);

    state = List.of(state.map((e) => e.id == _updated.id ? _updated : e));
  }

  void decreaseQuantity(int index) {
    final _item = List.of(state)[index];
    final _updated = _item.copyWith(quantity: _item.quantity - 1);

    state = List.of(state.map((e) => e.id == _updated.id ? _updated : e));
  }
}

// List<Map> sortcartlist = [];

List<Map<String, dynamic>> favouriteitems = [];

class Product {
  final int id;
  final String title;
  final String image;
  final String description;
  final bool favourite;
  final int quantity;
  final double price;

  Product(
    this.id,
    this.title,
    this.image,
    this.description,
    this.favourite,
    this.quantity,
    this.price,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.title == title &&
        other.image == image &&
        other.description == description &&
        other.favourite == favourite &&
        other.quantity == quantity &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        image.hashCode ^
        description.hashCode ^
        favourite.hashCode ^
        quantity.hashCode ^
        price.hashCode;
  }

  Product copyWith({
    int? id,
    String? title,
    String? image,
    String? description,
    bool? favourite,
    int? quantity,
    double? price,
  }) {
    return Product(
      id ?? this.id,
      title ?? this.title,
      image ?? this.image,
      description ?? this.description,
      favourite ?? this.favourite,
      quantity ?? this.quantity,
      price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'description': description,
      'favourite': favourite,
      'quantity': quantity,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['id']?.toInt() ?? 0,
      map['title'] ?? '',
      map['image'] ?? '',
      map['description'] ?? '',
      map['favourite'] ?? false,
      map['quantity']?.toInt() ?? 0,
      map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
