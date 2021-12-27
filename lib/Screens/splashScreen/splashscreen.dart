import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/Homepage.dart';
import 'package:grocery/Screens/loginscreen/googlesignin.dart';
import 'package:grocery/Screens/loginscreen/login.dart';
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
    var duration = Duration(seconds: 1);
    return Timer(duration, route);
  }

  route() async {
    final islogin = await GoogleSignInApi.isSigndIn();
    if (islogin == true) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    }
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
