import 'package:flutter/material.dart';
import 'package:grocery/constant/constant.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

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
                          "assets/images/profileimg.png",
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
                              color: kgreen,
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
                        shape:
                            Border(bottom: BorderSide(color: Colors.black26)),
                        leading:
                            Icon(Icons.badge_outlined, color: Colors.black),
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
                        leading: Icon(Icons.payment, color: Colors.black),
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
                        leading: Icon(Icons.confirmation_num_rounded,
                            color: Colors.black),
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
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF2F3F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Wrap(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: kgreen,
                              size: 24.0,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 130),
                              child: Text("Log out",
                                  style:
                                      TextStyle(fontSize: 20, color: kgreen)),
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
