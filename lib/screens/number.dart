import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: Icon(Icons.keyboard_arrow_left),
    ));
  }
}
