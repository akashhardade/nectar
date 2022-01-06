import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery/Screens/homescreen/productdetails.dart';
import 'package:grocery/constant/Data.dart';
import 'package:grocery/constant/constant.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Map> products = [
    {
      "exclusive": [
        {
          "id": 1,
          "title": "banana",
          "image": "assets/images/banana.png",
          "price": 50.0,
          "description": "6 pcs",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 2,
          "title": "apple",
          "image": "assets/images/apple.png",
          "price": 100.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 3,
          "title": "elichi banana",
          "image": "assets/images/banana.png",
          "price": 10.0,
          "description": "6 pcs",
          "favourite": false,
          "quantity": 1,
        },
      ],
      "bestselling": [
        {
          "id": 4,
          "title": "ginger",
          "image": "assets/images/ginger.png",
          "price": 45.0,
          "description": "100 gm",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 5,
          "title": "red capsicum",
          "image": "assets/images/bellpaper.png",
          "price": 5.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 6,
          "title": "cucumber",
          "image": "assets/images/banana.png",
          "price": 30.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
      ],
      "groceries": [
        {
          "id": 7,
          "title": "chicken",
          "image": "assets/images/chicken.png",
          "price": 45.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 8,
          "title": "beef",
          "image": "assets/images/beef.png",
          "price": 5.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
        {
          "id": 9,
          "title": "mutton",
          "image": "assets/images/chicken.png",
          "price": 30.0,
          "description": "1 kg",
          "favourite": false,
          "quantity": 1,
        },
      ],
    },
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage("assets/images/colorlogo.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text("Dhaka,Banassre"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        hintText: "Search store",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image(image: AssetImage("assets/images/banner.png")),
                  SizedBox(
                    height: 20,
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
                        style: TextStyle(color: kgreen, fontSize: 17),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products[0]["exclusive"].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 15.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  // setState(() {
                                  //   currentindex = index;
                                  // });
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ProductDetails(
                                          product: products[0]["exclusive"]
                                              [index])));
                                },
                                child: Container(
                                  height: 250,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                              height: 95,
                                              image: AssetImage(
                                                  "${products[0]["exclusive"][index]["image"]}")),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                              "${products[0]["exclusive"][index]["title"]}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        Text(
                                            "${products[0]["exclusive"][index]["description"]} price"),
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                                "\$ ${products[0]["exclusive"][index]["price"]}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Consumer(
                                              builder: (context, ref, child) {
                                                return InkWell(
                                                  onTap: () {
                                                    Map temp = products[0]
                                                        ["exclusive"][index];
                                                    ref(cartprovider)
                                                        .addtocart(temp);

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            content: Text(
                                                                "Added to cart")));
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kgreen,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(Icons.add,
                                                        color: Colors.white),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        style: TextStyle(color: kgreen, fontSize: 17),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                    ),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products[0]["bestselling"].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                right: 15,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentindex = index;
                                  });
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ProductDetails(
                                          product: products[0]["bestselling"]
                                              [currentindex])));
                                },
                                child: Container(
                                  height: 250,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                              height: 90,
                                              image: AssetImage(
                                                  "${products[0]["bestselling"][index]["image"]}")),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                              "${products[0]["bestselling"][index]["title"]}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        Text(
                                            "${products[0]["bestselling"][index]["description"]} price"),
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                                "\$ ${products[0]["bestselling"][index]["price"]}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Consumer(
                                              builder: (context, ref, child) {
                                                return InkWell(
                                                  onTap: () {
                                                    Map temp = products[0]
                                                        ["bestselling"][index];
                                                    ref(cartprovider)
                                                        .addtocart(temp);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            content: Text(
                                                                "Added to cart")));
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kgreen,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(Icons.add,
                                                        color: Colors.white),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        style: TextStyle(color: kgreen, fontSize: 17),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            height: 70,
                            width: 190,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/multigrain.png")),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen[100],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 70,
                              width: 190,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/grain.png")),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products[0]["groceries"].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentindex = index;
                                  });
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ProductDetails(
                                          product: products[0]["groceries"]
                                              [currentindex])));
                                },
                                child: Container(
                                  height: 250,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                              height: 75,
                                              image: AssetImage(
                                                  "${products[0]["groceries"][index]["image"]}")),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                              "${products[0]["groceries"][index]["title"]}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        Text(
                                            "${products[0]["groceries"][index]["description"]} price"),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                                "\$ ${products[0]["groceries"][index]["price"]}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Consumer(
                                              builder: (context, ref, child) {
                                                return InkWell(
                                                  onTap: () {
                                                    Map temp = products[0]
                                                        ["groceries"][index];
                                                    ref(cartprovider)
                                                        .addtocart(temp);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            content: Text(
                                                                "Added to cart")));
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: kgreen,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Icon(Icons.add,
                                                        color: Colors.white),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
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
}
