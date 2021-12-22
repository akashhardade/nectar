import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/screens/number.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 300,
                  child: Image(
                    image: AssetImage("assets/images/sign.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Get your groceries\n with nectar",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff030303)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Row(
                          children: [
                            Image(
                              width: 20,
                              height: 20,
                              image: AssetImage("assets/images/afg.png"),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("+93"),
                          ],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Number()));
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "or connect with social media",
                style: TextStyle(color: Colors.black45, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset("assets/images/google.svg"),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  primary: Color(0xff5383EC),
                  padding: const EdgeInsets.only(
                      left: 90, right: 90, top: 17, bottom: 17),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset("assets/images/facebook.svg"),
                label: Text(
                  "Continue with Facebook",
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  primary: Color(0xff4A66AC),
                  padding: const EdgeInsets.only(
                      left: 80, right: 80, top: 15, bottom: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
