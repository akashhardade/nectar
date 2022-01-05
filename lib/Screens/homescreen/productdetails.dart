import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery/constant/Data.dart';
import 'package:grocery/constant/constant.dart';

class ProductDetails extends StatefulWidget {
  final Map<String, dynamic> product;
  ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: 300,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.logout))
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image(
                    height: 200,
                    image: AssetImage(widget.product["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${widget.product["title"]}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (favouriteitems.length == 0) {
                            setState(() {
                              widget.product["favourite"] = false;
                            });
                          }
                          Map<String, dynamic> items = widget.product;
                          if (widget.product["favourite"] == true) {
                            favouriteitems.remove(items);
                          } else {
                            favouriteitems.add(items);
                          }
                          setState(() {
                            widget.product["favourite"] =
                                !widget.product["favourite"];
                          });
                          print(favouriteitems);
                        });
                      },
                      icon: widget.product["favourite"] == false
                          ? Icon(
                              Icons.favorite_outline,
                              size: 30,
                            )
                          : Icon(
                              Icons.favorite,
                              color: kgreen,
                              size: 30,
                            ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("${widget.product["description"]}")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove,
                              color: _itemCount >= 1 ? kgreen : Colors.grey),
                          onPressed: () => {
                            if (_itemCount >= 1) {setState(() => _itemCount--)}
                          },
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Colors.black38)),
                            child: Text(_itemCount.toString())),
                        IconButton(
                            icon: Icon(Icons.add, color: kgreen),
                            onPressed: () => setState(() => _itemCount++))
                      ],
                    ),
                    Text(
                      "\$ ${widget.product["price"]}",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.black38),
                            top: BorderSide(color: Colors.black38))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Product Detail",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.expand_more,
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Colors.black38),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutritions",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffF2F3F2),
                                    border: Border.all(color: Colors.black38)),
                                child: Text(
                                  " 100gr ",
                                  style: TextStyle(color: Colors.black54),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontFamily: "Gilroy-ExtraBold",
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: [
                            Container(
                              child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: 20,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.only(left: 5, top: 5),
                                  itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffF3603F),
                                      ),
                                  onRatingUpdate: (rating) {}),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Add to Basket',
                      style:
                          TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                    ),
                    onPressed: () {
                      Map<String, dynamic> temp = widget.product;
                      context
                          .read(cartProvider.notifier)
                          .addtocart(Product.fromMap(temp));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Added to cart")));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: kgreen,
                    ),
                  ),
                )
              ])),
        ]),
      ),
    );
  }
}
