import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/constant/constant.dart';

class Introduction extends StatefulWidget {
  Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/deliveryboy.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 400.0,
              ),
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/logo.png")),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome \nto our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ger your groceries in as fast as one hour",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xb2fcfcfc),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context)
                      //     .pushReplacement(MaterialPageRoute(builder: (_)=> ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kgreen,
                      ),
                      child: Text("Get Started",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.none)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
