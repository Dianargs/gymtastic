import 'package:flutter/material.dart';
import 'package:gym/newAccount.dart';
import 'package:gym/Login.dart';
import 'package:gym/menu.dart';

//other pages
import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/LoginScreen': (BuildContext context) => new LoginScreen(),
        '/newAccount' : (BuildContext context) => new newAccount(),
        '/menuPage' : (BuildContext context) => new menuPage(),
      },
      home: new LoginScreen(),
    );
  }
}

