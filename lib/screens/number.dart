import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:nectar/bottombar/bottombar.dart';
import 'package:nectar/screens/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum LoginScreen { SHOW_MOBILE_ENTER_WIDGET, SHOW_OTP_FORM_WIDGET }

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  final TextEditingController _mobilecontroller = TextEditingController();
  final TextEditingController _otpcontroller = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  LoginScreen currentState = LoginScreen.SHOW_MOBILE_ENTER_WIDGET;
  String verificationId = "";

  void signOut() async {
    await _auth.signOut();
  }

  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async {
    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomBar()));
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }

  showMobilePhoneWidget(context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 85, sigmaY: 10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Your mobile number",
                        style: TextStyle(
                            fontFamily: "Gilroy-ExtraBold",
                            fontSize: 23,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Mobile numbers",
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formkey,
                        child: Center(
                          child: TextField(
                            controller: _mobilecontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                hintText: "Enter Your PhoneNumber"),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () async {
          await _auth.verifyPhoneNumber(
              phoneNumber: "+91${_mobilecontroller.text}",
              verificationCompleted: (verificationCompleted) {},
              verificationFailed: (verificationFailed) {},
              codeSent: (verificationId, resendingToken) {
                setState(() {
                  currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
                  this.verificationId = verificationId;
                });
              },
              codeAutoRetrievalTimeout: (verificationId) {});
        },
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
    );
  }

  showOtpFormWidget(context) {
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
                  keyboardType: TextInputType.number,
                  controller: _otpcontroller,
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
          AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
              verificationId: verificationId, smsCode: _otpcontroller.text);
          signInWithPhoneAuthCred(phoneAuthCredential);
        },
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentState == LoginScreen.SHOW_MOBILE_ENTER_WIDGET
          ? showMobilePhoneWidget(context)
          : showOtpFormWidget(context),
    );
  }
}
