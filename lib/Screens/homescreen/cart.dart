import 'package:flutter/material.dart';
import 'package:grocery/constant/constant.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text("My Cart",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 1,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey.withOpacity(0.5), width: 0.5)),
                ),
                child: Row(
                  children: [
                    Image(
                      height: 100,
                      width: 100,
                      image: AssetImage("assets/images/bellpaper.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Red bellpaper",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.clear,
                                  size: 20,
                                ))
                          ],
                        ),
                        Text("1 KG price"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.remove,
                                      color: _itemCount >= 1
                                          ? kgreen
                                          : Colors.grey),
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
                                        border:
                                            Border.all(color: Colors.black38)),
                                    child: Text(_itemCount.toString())),
                                IconButton(
                                    icon: Icon(Icons.add, color: kgreen),
                                    onPressed: () =>
                                        setState(() => _itemCount++))
                              ],
                            ),
                            SizedBox(
                              width: 52,
                            ),
                            Text("\$ 4.99",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
