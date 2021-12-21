import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:grocery/Screens/loginscreen/signup.dart';
import 'package:grocery/constant/constant.dart';

class EmailLogin extends StatefulWidget {
  EmailLogin({Key? key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  bool _passwordvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              "Loging",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your email and password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  labelText: "Username",
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
            TextFormField(
              obscureText: !_passwordvisible,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Password",
                labelStyle: TextStyle(color: kgreen),
                focusColor: kgreen,
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: kgreen)),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: IconButton(
                  color: kgreen,
                  icon: Icon(
                    _passwordvisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordvisible = !_passwordvisible;
                    });
                  },
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text("Forget Password ?",
                        style: TextStyle(color: Colors.black)))),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (_) => ));
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
                      "LOG IN",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ? "),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (builder) => SignUp()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: kgreen),
                    )),
              ],
            ),
          ]),
    ));
  }
}
