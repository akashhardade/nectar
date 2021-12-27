import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

List<Map> data = [
  {
    "id": 1,
    "title": "Organic Bananas",
    "image": "assets/images/banana.png",
    "price": "4.99",
    "category": "Fruit_and_vegetable",
    "description": " 7pcs ,Price",
  },
  {
    "id": 2,
    "title": "Red Apple",
    "image": "assets/images/apple.png",
    "price": "4.99",
    "category": "oil",
    "description": "1 Kg ,Price",
  },
  {
    "id": 3,
    "title": "Strawberry",
    "image": "assets/images/stawberry.jpg",
    "price": "5.99",
    "category": "meat",
    "description": "12 pcs ,Price",
  },
  {
    "id": 4,
    "title": "Red Capsicum",
    "image": "assets/images/capsicum.png",
    "price": "8.56",
    "category": "bakery",
    "description": "6 pcs,Price",
  },
  {
    "id": 5,
    "title": "Ginger",
    "image": "assets/images/ginger.png",
    "price": "9.99",
    "category": "eggs",
    "description": "8 pcs,Price",
  },
  {
    "id": 6,
    "title": "cucumber",
    "image": "assets/images/cucumber.png",
    "price": "4.99",
    "category": "bevrages",
    "description": "3 pcs,Price",
  },
];

class Category {
  final int? id;
  final String? title;
  final String? image;
  final String? description;
  final String? price;

  Category({
    this.id,
    this.title,
    this.image,
    this.description,
    this.price,
  });
}

List<Map> categorylist = [
  {
    "category": "Fresh fruit & vegetables",
    "image": "assets/images/fresh.png",
    "subcategory": [
      {
        "id": 1,
        "title": "Organic Bananas",
        "image": "assets/images/banana.png",
        "price": "4.99",
        "description": " 7pcs ,Price",
      },
      {
        "id": 2,
        "title": "Red Apple",
        "image": "assets/images/apple.png",
        "price": "4.99",
        "description": "1 Kg ,Price",
      },
      {
        "id": 3,
        "title": "Strawberry",
        "image": "assets/images/stawberry.jpg",
        "price": "5.99",
        "description": "12 pcs ,Price",
      },
      {
        "id": 4,
        "title": "Red Capsicum",
        "image": "assets/images/capsicum.png",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 5,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 6,
        "title": "cucumber",
        "image": "assets/images/cucumber.png",
        "price": "4.99",
        "description": "3 pcs,Price",
      },
    ],
  },
  {
    "category": "Cooking oil and ghee",
    "image": "assets/images/oil.png",
    "subcategory": [
      {
        "id": 7,
        "title": "Sunday Oil",
        "image": "assets/images/sundayoil.jpeg",
        "price": "8.56",
        "description": "1L,Price",
      },
      {
        "id": 8,
        "title": "Fortune oil",
        "image": "assets/images/fortune.jpeg",
        "price": "9.99",
        "description": "2L pcs,Price",
      },
      {
        "id": 9,
        "title": "Amul ghee",
        "image": "assets/images/amul.jpeg",
        "price": "4.99",
        "description": "500ml ,Price",
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
        "price": "4.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 11,
        "title": "Boiler Chicken",
        "image": "assets/images/chicken.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 12,
        "title": "Fish",
        "image": "assets/images/fish.png",
        "price": "4.99",
        "description": "3 pcs,Price",
      },
    ]
  },
  {
    "category": "Bakery and snacks",
    "image": "assets/images/bakery.png",
    "subcategory": [
      {
        "id": 13,
        "title": "Cupcake",
        "image": "assets/images/cupcake.jpg",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 14,
        "title": "Ladoo",
        "image": "assets/images/laddo.jpg",
        "price": "4.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 15,
        "title": "Brownies",
        "image": "assets/images/brownies.jpg",
        "price": "4.99",
        "description": "3 pcs,Price",
      },
    ]
  },
  {
    "category": "daily eggs",
    "image": "assets/images/eggs.png",
    "subcategory": [
      {
        "id": 16,
        "title": "Egg chicken red",
        "image": "assets/images/eggred.png",
        "price": "4.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 17,
        "title": "Egg white",
        "image": "assets/images/eggw.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 18,
        "title": "Egg pasta",
        "image": "assets/images/eggpasta.png",
        "price": "4.99",
        "description": " 30 gms,Price",
      },
      {
        "id": 19,
        "title": "Egg chicken red",
        "image": "assets/images/eggred.png",
        "price": "4.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 20,
        "title": "Egg white",
        "image": "assets/images/eggw.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 21,
        "title": "Egg pasta",
        "image": "assets/images/eggpasta.png",
        "price": "4.99",
        "description": " 30 gms,Price",
      },
    ]
  },
  {
    "category": "Bevrages",
    "image": "assets/images/bevrages.png",
    "subcategory": [
      {
        "id": 22,
        "title": "Diet Coke",
        "image": "assets/images/coke.png",
        "price": "1.99",
        "description": "355ml,Price",
      },
      {
        "id": 23,
        "title": "sprite",
        "image": "assets/images/sprite.png",
        "price": "1.50",
        "description": "325ml,Price",
      },
      {
        "id": 24,
        "title": "Apple juice",
        "image": "assets/images/applej.png",
        "price": "15.99",
        "description": "2L,Price",
      },
      {
        "id": 25,
        "title": "Orange juice",
        "image": "assets/images/orangej.png",
        "price": "1.99",
        "description": "355ml,Price",
      },
      {
        "id": 26,
        "title": "coca cola can",
        "image": "assets/images/coca.png",
        "price": "4.99",
        "description": "325ml,Price",
      },
      {
        "id": 27,
        "title": "Pepsi can",
        "image": "assets/images/pepsi.png",
        "price": "4.9",
        "description": "330ml,Price",
      },
    ]
  }
];

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}