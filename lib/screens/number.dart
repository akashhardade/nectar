import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/verification.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                    // mainAxisAlignment: MainAxisAlignment.start,
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
                        child: Container(
                          child: InternationalPhoneNumberInput(
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Required field")
                            ]),
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
                            autoValidateMode:
                                AutovalidateMode.onUserInteraction,
                            selectorTextStyle: TextStyle(color: Colors.black),
                            formatInput: false,
                            keyboardType: TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            inputBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            onSaved: (PhoneNumber number) {},
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
          if (_formkey.currentState!.validate()) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Verification()));
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
