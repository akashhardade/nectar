import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery/Screens/introduction/introduction.dart';
import 'package:grocery/constant/constant.dart';

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
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Introduction()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: kgreen,
      child: Center(
        child: Image(
          image: AssetImage("assets/images/logoname.png"),
        ),
      ),
    );
  }
}
