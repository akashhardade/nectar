import 'package:flutter/material.dart';
import 'package:nectar/screens/constants.dart';
import 'package:provider/provider.dart';

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
        body: favouriteList.length == 0
            ? Center(
                child: Container(
                  child: Text(
                    "No favourites Added",
                    style: TextStyle(
                        fontSize: 30,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            : ListView.builder(
                itemCount: favouriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                            image: AssetImage(favouriteList[index]["image"]),
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
                                      favouriteList[index]["title"],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(favouriteList[index]["description"]),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("\$ ${favouriteList[index]["price"]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
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
          Consumer<Myprovider>(builder: (context, value, child) {
            final uniqueCartList = value.uniqueCartList;
            return Row(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add all to Cart',
                          style: TextStyle(
                              fontFamily: 'Gilory-Light', fontSize: 18),
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        uniqueCartList.addAll(favouriteList);
                        
                        favouriteList.clear();
                      

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text("Added all products to cart")));
                      });
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
            );
          })
        ]);
  }
}
