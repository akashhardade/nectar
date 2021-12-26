import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:nectar/screens/constants.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({Key? key}) : super(key: key);

  @override
  _OrderAcceptedState createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 20),
                child: Image(
                  image: AssetImage("assets/images/APPB.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Image(
                  height: 220,
                  // width: 200,
                  image: AssetImage("assets/images/order_Accepted.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your order has been \naccepted",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Gilroy-Light",
                  fontWeight: FontWeight.w500,
                  fontSize: 23),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your item has been placed and is on \n it's way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 1.0,
                  color: Color(0xff7C7C7C),
                  fontFamily: "Gilroy-Light",
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 60,
              width: 390,
              child: ElevatedButton(
                child: Text(
                  'Track order',
                  style: TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  primary: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Back to home",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      )),
    );
  }
}
