import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nectar/classmodel.dart';
import 'package:nectar/screens/splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:  (context) => Myprovider(),
      child: MaterialApp(
        home:
         HomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Gilroy-ExtraBold'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}
