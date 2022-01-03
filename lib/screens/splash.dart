import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar/bottombar/bottombar.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/google_signin.dart';
import 'package:nectar/screens/signIn.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late FirebaseAuth _auth;
  late User? _user;
  @override
  void initState() {
    super.initState();
    starttimer();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
  }

  starttimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() async {
    final islogin = await GoogleSignInApi.isSigndIn();
    if (islogin == true || _user != null) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => BottomBar()));
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => SignIn()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
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
