import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/login.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 95,
            sigmaY: 10,
          ),
          child: Image(
            image: AssetImage("assets/images/APPB.png"),
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Enter Your 4-digit code",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Gilroy-Light",
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Code",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: MultiValidator(
                      [RequiredValidator(errorText: "Required field")]),
                  decoration: InputDecoration(
                      focusColor: Colors.black, hintText: "_ _ _ _"),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Resend code",
                  style: TextStyle(
                      fontSize: 17,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Login()));
          }
        },
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
