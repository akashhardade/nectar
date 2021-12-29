import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/Screens/loginscreen/otpverify.dart';
import 'package:grocery/constant/constant.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobileLogin extends StatefulWidget {
  MobileLogin({Key? key}) : super(key: key);

  @override
  _MobileLoginState createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController mobnoController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var mobileno;
  String verificationId = "";
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
        key: _formkey,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Enter your mobile number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Mobile Number"),
                Container(
                  child: InternationalPhoneNumberInput(
                    textFieldController: mobnoController,
                    maxLength: 10,
                    onInputChanged: (PhoneNumber number) {},
                    // onInputValidated: (bool value) {},
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      setSelectorButtonAsPrefixIcon: true,
                      leadingPadding: 20,
                      useEmoji: true,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.onUserInteraction,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    formatInput: false,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onSaved: (PhoneNumber number) {
                      setState(() {
                        mobnoController = mobileno;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: kgreen,
          child: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
          ),
          onPressed: () async {
            if (_formkey.currentState!.validate()) {
              await _auth.verifyPhoneNumber(
                  phoneNumber: "+91${mobnoController.text}",
                  verificationCompleted: (PhoneAuthCredential) async {},
                  verificationFailed: (PhoneVerificationFailed) {},
                  codeSent: (verificationId, resendingToken) async {
                    setState(() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) =>
                              OtpVerify(verificationId: verificationId)));
                      this.verificationId = verificationId;
                    });
                  },
                  codeAutoRetrievalTimeout: (verificationId) async {});
            }
          }),
    );
  }
}
