import 'package:flutter/material.dart';
import 'package:grocery/Screens/homescreen/productdetails.dart';
import 'package:grocery/constant/Data.dart';
import 'package:grocery/constant/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryProductList extends StatefulWidget {
  final Map products;
  CategoryProductList({Key? key, required this.products}) : super(key: key);

  @override
  _CategoryProductListState createState() => _CategoryProductListState();
}

class _CategoryProductListState extends State<CategoryProductList> {
  var currentindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
                size: 40,
              )),
          title: Text(
            "${widget.products["category"]}",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: Container(
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 10),
            itemCount: widget.products["subcategory"].length,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentindex = index;
                    });
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductDetails(
                            product: widget.products["subcategory"]
                                [currentindex])));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 420,
                    width: 160,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image(
                              image: AssetImage(widget.products["subcategory"]
                                  [index]["image"])),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${widget.products["subcategory"][index]["title"]}",
                                  style: TextStyle(
                                      fontFamily: "Gilroy-ExtraBold",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "${widget.products["subcategory"][index]["description"]}",
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$ ${"${widget.products["subcategory"][index]["price"]}"}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Consumer(builder: (context, ref, child) {
                                      return InkWell(
                                        onTap: () {
                                          Map temp = widget
                                              .products["subcategory"][index];
                                          ref(cartprovider).addtocart(temp);
                                          // ScaffoldMessenger.of(context)
                                          //     .showSnackBar(SnackBar(
                                          //         content:
                                          //             Text("Added to cart")));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: kgreen,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      );
                                    })
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
