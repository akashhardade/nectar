import 'package:flutter/material.dart';
import 'package:nectar/bottombar/orderAccepted.dart';
import 'package:nectar/screens/constants.dart';

import '../classmodel.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourite",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: "Gilroy-Light",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5), width: 0.3)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    height: 80,
                    width: 80,
                    image: AssetImage(categorylist[index]["image"]),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              "\$ ${categorylist[index]["subcategory"][index]["price"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
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
                      'Add all to Cart',
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
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                    image:
                                        AssetImage("assets/images/fail.png")),
                                SizedBox(
                                  height: 40,
                                ),
                                Text("Oops! Order Failed",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Something went terribly Wrong",
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
                                      style: TextStyle(
                                          fontFamily: 'Gilory-Light',
                                          fontSize: 18),
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      primary: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Back to Home",
                                        style: TextStyle(color: Colors.black))),
                              ],
                            ),
                          ));
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
