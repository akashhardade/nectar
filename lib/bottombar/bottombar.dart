import 'package:flutter/material.dart';
import 'package:nectar/bottombar/account.dart';
import 'package:nectar/bottombar/cart.dart';
import 'package:nectar/bottombar/explore.dart';
import 'package:nectar/bottombar/favourite.dart';
import 'package:nectar/bottombar/shop.dart';
import 'package:nectar/screens/constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var selectedindex = 0;
  final tabs = <Widget>[Shop(), Explore(), Cart(), Favourite(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 30,
          backgroundColor: Colors.white,
          selectedItemColor: kPrimaryColor,
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
