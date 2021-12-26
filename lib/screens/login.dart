import 'dart:ui';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/material.dart';
import 'package:nectar/bottombar/bottombar.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
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
                  height: 150,
                  width: double.infinity,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 75, sigmaY: 10),
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
                        "Login",
                        style: TextStyle(
                            fontFamily: "Gilroy-Light",
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter your emails and password",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
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
                        style: TextStyle(color: Colors.black54, fontSize: 15),
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
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: Text(
                          "Forget password?",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontFamily: 'Gilory-Light', fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => BottomBar()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20),
                          ),
                          primary: kPrimaryColor,
                          padding: const EdgeInsets.only(
                              left: 160, right: 160, top: 19, bottom: 19),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an account ?",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => Signup()));
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
