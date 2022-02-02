import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/Homepage.dart';
import 'package:grocery/constant/constant.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({Key? key}) : super(key: key);

  @override
  _OrderAcceptedState createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  void initState() {
    super.initState();
    // sortcartlist.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Center(
              child: Image(
                  height: 220,
                  image: AssetImage("assets/images/orderaccept.png")),
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
              width: MediaQuery.of(context).size.width * 0.90,
              child: ElevatedButton(
                child: Text(
                  'Track order',
                  style: TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: kgreen,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => HomePage()));
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
