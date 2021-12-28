import 'package:flutter/material.dart';
import 'package:nectar/bottombar/orderAccepted.dart';
import 'package:nectar/classmodel.dart';
import 'package:nectar/screens/constants.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Gilroy-Light",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.8,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5), width: 0.5)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    height: 120,
                    width: 120,
                    image: AssetImage(categorylist[index]["image"]),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              categorylist[index]["subcategory"][index]
                                  ["title"],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(categorylist[index]["subcategory"][index]
                              ["description"]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.black38)),
                                child: IconButton(
                                  icon: Icon(Icons.remove,
                                      color: itemcount >= 1
                                          ? kPrimaryColor
                                          : Colors.grey),
                                  onPressed: () => {
                                    if (itemcount >= 1)
                                      {setState(() => itemcount--)}
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  itemcount.toString(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.black38)),
                                child: IconButton(
                                    icon: Icon(Icons.add, color: kPrimaryColor),
                                    onPressed: () =>
                                        setState(() => itemcount++)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.clear)),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                                "\$ ${categorylist[index]["subcategory"][index]["price"]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
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
                      'Go to Checkout',
                      style:
                          TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF489E67),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("\$ 9.99"),
                        ))
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
                                          onPressed: () {},
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
                                                "assets/images/afg.png"),
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
                                            "\$ 13.97",
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
                                width: 390,
                                child: ElevatedButton(
                                  child: Text(
                                    'Place order',
                                    style: TextStyle(
                                        fontFamily: 'Gilory-Light',
                                        fontSize: 18),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) => OrderAccepted()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                    ),
                                    primary: kPrimaryColor,
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
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  primary: kPrimaryColor,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
