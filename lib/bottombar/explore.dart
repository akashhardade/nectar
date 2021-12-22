import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nectar/classmodel.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Find Products",
                style: TextStyle(
                    fontFamily: "Gilroy-ExtraBold",
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      child: TextField(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  // childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: data.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              alignment: Alignment.center,
                              child: Text("${data[index]["category"]}"),
                              decoration: BoxDecoration(
                                  color: Color(0xff53B175),
                                  borderRadius: BorderRadius.circular(15)),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
