import 'package:flutter/material.dart';
import 'package:grocery/Screens/loginscreen/emaillogin.dart';
import 'package:grocery/constant/constant.dart';

class OtpVerify extends StatefulWidget {
  OtpVerify({Key? key}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.black)),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Enter your 4 digit code",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Code"),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "- - - -",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(onPressed: () {}, child: Text("Resend OTP")),
          ),
          FloatingActionButton(
              backgroundColor: kgreen,
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => EmailLogin()));
              }),
        ],
      ),
    );
  }
}
