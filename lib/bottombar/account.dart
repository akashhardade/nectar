import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/classmodel.dart';
import 'package:nectar/screens/constants.dart';
import 'package:nectar/screens/google_signin.dart';
import 'package:nectar/screens/signIn.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 110,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 32,
                      child: Image(
                        image: AssetImage(
                          "assets/images/Profile.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Afsar hossen",
                              style: TextStyle(
                                  fontFamily: 'Gilroy-ExtraBold',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.edit_outlined,
                              color: kPrimaryColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "iamshuvo97@gmail.com",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                        onTap: () {
                         // print(abc);
                        },
                        shape: Border(
                            top: BorderSide(color: Colors.black26),
                            bottom: BorderSide(color: Colors.black26)),
                        leading: Icon(
                          Icons.local_mall_outlined,
                          color: Colors.black87,
                        ),
                        title: Text(
                          "Orders",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        onTap: () {
                          print(cartList);
                        },
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: SvgPicture.asset("assets/images/Details.svg"),
                        title: Text(
                          "My details",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: Icon(
                          Icons.place_outlined,
                          color: Colors.black87,
                        ),
                        title: Text(
                          "Delivery Address",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: SvgPicture.asset("assets/images/payment.svg"),
                        title: Text(
                          "Payment Methods",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: SvgPicture.asset("assets/images/Promo.svg"),
                        title: Text(
                          "Promo Codes",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: Icon(
                          Icons.notifications_outlined,
                          color: Colors.black87,
                        ),
                        title: Text(
                          "Notificatios",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: Icon(
                          Icons.help_outline,
                          color: Colors.black87,
                        ),
                        title: Text(
                          "Help",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                    ListTile(
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading: Icon(
                          Icons.error_outline,
                          color: Colors.black87,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black87,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF2F3F2),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () async {
                      await GoogleSignInApi.logout();
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    child: Wrap(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: kPrimaryColor,
                              size: 24.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: Text("Log out",
                                  style: TextStyle(
                                      fontSize: 20, color: kPrimaryColor)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
