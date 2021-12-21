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
                "Enter your mobile number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Mobile Number"),
              Container(
                child: InternationalPhoneNumberInput(
                  maxLength: 10,
                  hintText: "",
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool value) {},
                  selectorConfig: const SelectorConfig(
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
                  onSaved: (PhoneNumber number) {},
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: kgreen,
          child: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => OtpVerify()));
          }),
    );
  }
}
