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

  Category(
    {
    this.id,
    this.title,
    this.image,
    this.description,
    this.price,
  }
  );



}
