import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery/constant/Data.dart';
import 'package:grocery/constant/constant.dart';

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text("Favourite",
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
              height: 60,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    child: Text(
                      'Add All To Cart',
                      style:
                          TextStyle(fontFamily: 'Gilory-Light', fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        // sort.addAll(favouriteitems);
                        ref(cartprovider).additemfavtocart();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text("Added all products to cart")));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: kgreen,
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ],
      body: Consumer(
        builder: (context, ref, child) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: ref(cartprovider).favouriteitems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5), width: 0.5)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          height: 100,
                          width: 100,
                          image: AssetImage(
                              ref(cartprovider).favouriteitems[index]["image"]),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${ref(cartprovider).favouriteitems[index]["title"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                "${ref(cartprovider).favouriteitems[index]["description"]}"),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "\$ ${ref(cartprovider).favouriteitems[index]["price"]}",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.keyboard_arrow_right))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
