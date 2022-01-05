import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/Homepage.dart';
import 'package:grocery/Screens/homescreen/orderaccepted.dart';
import 'package:grocery/constant/Data.dart';
import 'package:grocery/constant/constant.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
    // gettotalprice();
  }

  bool hasinternet = false;

  checkinternet() async {
    hasinternet = await InternetConnectionChecker().hasConnection;
    if (hasinternet == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => OrderAccepted()));
    } else {
      internetissue(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text("My Cart",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 1,
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.90,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'Add to Basket',
                      style:
                          TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                    ),
                    if (finalprice == 0)
                      Container(
                        width: 60,
                      )
                    else
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF489E67),
                            borderRadius: BorderRadius.circular(5)),
                        // child:
                        //  Padding(
                        //     padding: const EdgeInsets.all(5.0),
                        //     child:
                        //      Consumer(builder: (context, watch, child) {
                        //       final finalprice = context.read(grandtotal);
                        //       final value = finalprice.state;
                        //       return Text("\$ $value");
                        //     }
                        //     ))
                      )
                  ],
                ),
                onPressed: () {
                  showModalBottomSheet<void>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: Center(
                          child: ListView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black26))),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20),
                                        child: Text(
                                          "Checkout",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(
                                            Icons.clear,
                                            size: 30,
                                            color: Colors.black,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black26))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Delivery",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            "Select Method",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 30,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black26))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Payment",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Image(
                                            width: 20,
                                            height: 20,
                                            image: AssetImage(
                                                "assets/images/card.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 30,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black26))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Promo code",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            "Pick discount",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 30,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black26))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Total cost",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$ 28.16",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 30,
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 10),
                                child: Text(
                                  "By placing an order you agree to our ",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text(
                                      "Terms",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("And"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Conditions",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.90,
                                child: ElevatedButton(
                                  child: Text(
                                    'Track order',
                                    style: TextStyle(
                                        fontFamily: 'Gilory-Light',
                                        fontSize: 18),
                                  ),
                                  onPressed: () {
                                    checkinternet();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    primary: kgreen,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: kgreen,
                ),
              ),
            )
          ],
        )
      ],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: sortcartlist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 0.5)),
                  ),
                  child: Row(
                    children: [
                      Image(
                        height: 100,
                        width: 100,
                        image: AssetImage("${sortcartlist[index]["image"]}"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${sortcartlist[index]["title"]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("${sortcartlist[index]["description"]}"),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove,
                                        color:
                                            sortcartlist[index]["quantity"] >= 1
                                                ? kgreen
                                                : Colors.grey),
                                    onPressed: () => {
                                      if (sortcartlist[index]["quantity"] >= 2)
                                        {
                                          setState(() =>
                                              sortcartlist[index]["quantity"]--)
                                        }
                                    },
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          border: Border.all(
                                              color: Colors.black38)),
                                      child: Text(sortcartlist[index]
                                              ["quantity"]
                                          .toString())),
                                  IconButton(
                                      icon: Icon(Icons.add, color: kgreen),
                                      onPressed: () => setState(() =>
                                          sortcartlist[index]["quantity"]++))
                                ],
                              ),
                              SizedBox(
                                width: 52,
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      sortcartlist.removeAt(index);
                                      cartitems.clear();
                                      // cartitems.removeWhere((element) =>
                                      //         sortcartlist[index]["id"] = element["id"]);
                                      // totalpricelist.removeAt(index);
                                      print(cartitems);
                                      print(totalpricelist);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    size: 20,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text("Rs. ${sortcartlist[index]["price"]}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Future<dynamic> internetissue(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(image: AssetImage("assets/images/orderfailimg.png")),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Oops! Order Failed",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Something went trubly Wrong",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Please Try Again',
                        style:
                            TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                      ),
                      onPressed: () async {
                        var isinternet =
                            await InternetConnectionChecker().hasConnection;
                        if (isinternet == true) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => OrderAccepted()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: kgreen,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => HomePage()));
                      },
                      child: Text("Back to Home",
                          style: TextStyle(color: Colors.black))),
                ],
              ),
            ));
  }
}
