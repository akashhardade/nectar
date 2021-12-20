import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    starttimer();
  }

  starttimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color:kPrimaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Image(image: AssetImage("assets/images/Group 1.png")),
          )
        ],
      ),
    );
  }
}
