import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/Homepage.dart';
import 'package:grocery/Screens/loginscreen/googlesignin.dart';
import 'package:grocery/Screens/loginscreen/mobilenologin.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 400,
              image: AssetImage("assets/images/logintop.png"),
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get your groceries \nwith nectar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Row(
                        children: [
                          Image(
                            width: 20,
                            height: 20,
                            image: AssetImage("assets/images/india.png"),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("+91"),
                        ],
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MobileLogin()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or connect with social media",
                      style: TextStyle(color: Color(0xff828282)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: signin,
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff5383EC),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                              height: 25,
                              width: 20,
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/google.png")),
                          SizedBox(
                            width: 45,
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff4A66AC),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                              height: 25,
                              width: 25,
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/fb.png")),
                          SizedBox(
                            width: 45,
                          ),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ); 
  }

  Future signin() async {
    final user = await GoogleSignInApi.login();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sign in Failed")));
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    }
  }
}
