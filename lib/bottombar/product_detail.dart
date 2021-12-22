import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nectar/screens/constants.dart';

class Detail extends StatefulWidget {
  final Map product;
  Detail({Key? key, required this.product}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
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
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 200,
                  child: Image(
                    image: AssetImage(widget.product["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.99,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product["title"],
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gilroy-ExtraBold"),
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.product["description"],
                    style: TextStyle(
                        fontFamily: "Gilroy-Light",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () => {
                              if (_itemCount >= 1)
                                {setState(() => _itemCount--)}
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
                              icon: Icon(Icons.add),
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
                    height: 10,
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
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
                      padding: const EdgeInsets.all(10),
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
                                      border:
                                          Border.all(color: Colors.black38)),
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
                                    itemPadding:
                                        EdgeInsets.only(left: 5, top: 5),
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
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Add to Basket',
                        style:
                            TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20),
                        ),
                        primary: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
