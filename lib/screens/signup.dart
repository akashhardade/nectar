import 'dart:ui';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:flutter/material.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  final TextEditingController _usercontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwdcontroller = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 95, sigmaY: 20),
                    child: Image(
                      image: AssetImage("assets/images/APPB.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image(image: AssetImage("assets/images/carrot.png")),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Form(
                  key: _formkey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "Gilroy-ExtraBold",
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enter your credential to continue",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Username",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        TextFormField(
                          controller: _usercontroller,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: MultiValidator(
                              [RequiredValidator(errorText: "Required Field")]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: _emailcontroller,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Required Field"),
                            EmailValidator(
                              errorText: "Please enter a valid Email",
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Required Field"),
                            MinLengthValidator(8,
                                errorText:
                                    "Password should be more then 8 characters")
                          ]),
                          controller: _pwdcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.black),
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 15),
                                children: [
                                  TextSpan(
                                    text: 'By continuing you agree to our ',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  TextSpan(
                                    text: 'Terms of services',
                                    style: TextStyle(color: kPrimaryColor),
                                  ),
                                  TextSpan(
                                    text: ' and',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  TextSpan(
                                    text: ' Privacy policy',
                                    style: TextStyle(color: kPrimaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: 'Gilory-Light', fontSize: 18),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            primary: kPrimaryColor,
                            padding: const EdgeInsets.only(
                                left: 150, right: 150, top: 19, bottom: 19),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => Login()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
