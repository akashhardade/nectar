import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/Homepage.dart';
import 'package:grocery/constant/constant.dart';

class OtpVerify extends StatefulWidget {
  final String verificationId;
  OtpVerify({Key? key, required this.verificationId}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async {
    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);
     

      if (authCred.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController _mobnoController = TextEditingController();
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
      body: Form(
        key: _formKey,
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
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
                  keyboardType: TextInputType.number,
                  controller: _mobnoController,
                  validator: (value) {
                   
                  },
                  decoration: InputDecoration(
                    hintText: "- - - -",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextButton(onPressed: () {}, child: Text("Resend OTP")),
          ),
          FloatingActionButton(
              backgroundColor: kgreen,
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onPressed: () {
                AuthCredential phoneAuthCredential =
                    PhoneAuthProvider.credential(
                        verificationId: widget.verificationId,
                        smsCode: _mobnoController.text);
                signInWithPhoneAuthCred(phoneAuthCredential);
              }),
        ],
      ),
    );
  }
}
