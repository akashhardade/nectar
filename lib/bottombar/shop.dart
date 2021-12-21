import 'package:flutter/material.dart';
import 'package:nectar/screens/constants.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Map> product = [
    {
      "exclusive": [
        {
          "id": 1,
          "title": "Organic Bananas",
          "image": "assets/images/banana.png",
          "price": "4.99",
          "description": " 7pcs ,Price",
        },
        {
          "id": 2,
          "title": "Red Apple",
          "image": "assets/images/apple.png",
          "price": "4.99",
          "description": "1 Kg ,Price",
        },
        {
          "id": 3,
          "title": "Strawberry",
          "image": "assets/images/stawberry.jpg",
          "price": "5.99",
          "description": "12 pcs ,Price",
        },
      ],
      "bestselling": [
        {
          "id": 4,
          "title": "Red Capsicum",
          "image": "assets/images/capsicum.png",
          "price": "8.56",
          "description": "6 pcs,Price",
        },
        {
          "id": 5,
          "title": "Ginger",
          "image": "assets/images/ginger.png",
          "price": "9.99",
          "description": "8 pcs,Price",
        },
        {
          "id": 6,
          "title": "cucumber",
          "image": "assets/images/cucumber.png",
          "price": "4.99",
          "description": "3 pcs,Price",
        },
      ],
      "groceries": [
        {
          "id": 7,
          "title": "Beef Bone",
          "image": "assets/images/beef.png",
          "price": "4.56",
          "description": "6 pcs,Price",
        },
        {
          "id": 8,
          "title": "Boiler Chicken",
          "image": "assets/images/chicken.png",
          "price": "9.99",
          "description": "8 pcs,Price",
        },
        {
          "id": 9,
          "title": "Fish",
          "image": "assets/images/fish.png",
          "price": "4.99",
          "description": "3 pcs,Price",
        },
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: 40,
                      child: Image(
                        image: AssetImage("assets/images/carrot.png"),
                      )),
                )),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black87,
                    ),
                    Text("Dhaka,Banassre",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: Colors.black12,
                          hintText: "Search Store",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image(image: AssetImage("assets/images/banner.png")),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exclusive Offer",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22,
                                  fontFamily: "Gilroy-ExtraBold",
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "see all",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 350,
                                width: 160,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                          image: AssetImage(product[0]
                                              ["exclusive"][index]["image"])),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product[0]["exclusive"][index]
                                                  ["title"],
                                              style: TextStyle(
                                                  fontFamily:
                                                      "Gilroy-ExtraBold",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              product[0]["exclusive"][index]
                                                  ["description"],
                                              style: TextStyle(
                                                  fontFamily: "Gilroy-Light",
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "\$ ${product[0]["exclusive"][index]["price"]}",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Best Selling",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22,
                                  fontFamily: "Gilroy-ExtraBold",
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "see all",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 17),
                          )
                        ],
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 350,
                                width: 160,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                          image: AssetImage(product[0]
                                              ["bestselling"][index]["image"])),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product[0]["bestselling"][index]
                                                  ["title"],
                                              style: TextStyle(
                                                  fontFamily:
                                                      "Gilroy-ExtraBold",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              product[0]["bestselling"][index]
                                                  ["description"],
                                              style: TextStyle(
                                                  fontFamily: "Gilroy-Light",
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "\$ ${product[0]["bestselling"][index]["price"]}",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Groceries",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22,
                                  fontFamily: "Gilroy-ExtraBold",
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "see all",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 17),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 90,
                                width: 200,
                                // color: Colors.amber[50],
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/pulses.png")),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Pulses",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 90,
                                width: 200,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/Rices.png")),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Rice",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 350,
                                width: 160,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                          image: AssetImage(product[0]
                                              ["groceries"][index]["image"])),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product[0]["groceries"][index]
                                                  ["title"],
                                              style: TextStyle(
                                                  fontFamily:
                                                      "Gilroy-ExtraBold",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              product[0]["groceries"][index]
                                                  ["description"],
                                              style: TextStyle(
                                                  fontFamily: "Gilroy-Light",
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "\$ ${product[0]["groceries"][index]["price"]}",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
