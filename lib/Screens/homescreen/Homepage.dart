import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/account.dart';
import 'package:grocery/Screens/homescreen/cart.dart';
import 'package:grocery/Screens/homescreen/explore.dart';
import 'package:grocery/Screens/homescreen/favorite.dart';
import 'package:grocery/Screens/homescreen/shop.dart';
import 'package:grocery/constant/constant.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  final tabs = <Widget>[Shop(), Explore(), Cart(), Favorite(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 30,
          backgroundColor: Colors.white,
          selectedItemColor: kgreen,
          elevation: 0,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_outlined),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "account",
            ),
          ]),
    );
  }
}
