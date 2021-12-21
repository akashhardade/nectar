import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:grocery/Screens/loginscreen/emaillogin.dart';
import 'package:grocery/constant/constant.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey _formkey = GlobalKey();
  bool _passwordvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("assets/images/colorlogo.png"),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter your credential to continue",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Username"),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kgreen)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Email"),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        focusColor: kgreen,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: kgreen),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kgreen)),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                    validator: MultiValidator([
                      EmailValidator(errorText: "Enter valid Email"),
                      RequiredValidator(errorText: "Enter Email here"),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password"),
                  TextFormField(
                    obscureText: !_passwordvisible,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: kgreen),
                      focusColor: kgreen,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kgreen)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      suffixIcon: IconButton(
                        color: kgreen,
                        icon: Icon(
                          _passwordvisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordvisible = !_passwordvisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("By continuing you agree to our",
                              style: TextStyle(fontSize: 14)),
                          Text(" Terms of Service",
                              style: TextStyle(color: kgreen, fontSize: 14)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("and", style: TextStyle(fontSize: 14)),
                          Text(" Privacy policy",
                              style: TextStyle(color: kgreen, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (builder) => EmailLogin()));
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: kgreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ? "),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (builder) => EmailLogin()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: kgreen),
                          )),
                    ],
                  ),
                ]),
          ),
        ));
  }
}
