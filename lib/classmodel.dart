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
        "title": "Red Capsicum",
        "image": "assets/images/capsicum.png",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 8,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 9,
        "title": "cucumber",
        "image": "assets/images/cucumber.png",
        "price": "4.99",
        "description": "3 pcs,Price",
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
        "title": "Red Capsicum",
        "image": "assets/images/capsicum.png",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 14,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 15,
        "title": "cucumber",
        "image": "assets/images/cucumber.png",
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
        "title": "Red Capsicum",
        "image": "assets/images/capsicum.png",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 17,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 18,
        "title": "cucumber",
        "image": "assets/images/cucumber.png",
        "price": "4.99",
        "description": "3 pcs,Price",
      },
    ]
  },
  {
    "category": "Bevrages",
    "image": "assets/images/bevrages.png",
    "subcategory": [
      {
        "id": 19,
        "title": "Red Capsicum",
        "image": "assets/images/capsicum.png",
        "price": "8.56",
        "description": "6 pcs,Price",
      },
      {
        "id": 20,
        "title": "Ginger",
        "image": "assets/images/ginger.png",
        "price": "9.99",
        "description": "8 pcs,Price",
      },
      {
        "id": 21,
        "title": "cucumber",
        "image": "assets/images/cucumber.png",
        "price": "4.99",
        "description": "3 pcs,Price",
      },
    ]
  }
];
