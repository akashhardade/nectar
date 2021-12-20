import 'package:flutter/material.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/signIn.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/onbord.png"),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/Slice.png",
                      ),
                    ),
                    Text(
                      "Welcome \nto our store",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 45,
                        fontFamily: "Gilroy-ExtraBold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Get your groceries in as fast as one hour",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white70,
                        fontSize: 17,
                        fontFamily: "Gilroy-Light",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      child: Text(
                        'Get Started',
                        style:
                            TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => SignIn()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20),
                        ),
                        primary: kPrimaryColor,
                        padding: const EdgeInsets.only(
                            left: 110, right: 110, top: 17, bottom: 17),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
