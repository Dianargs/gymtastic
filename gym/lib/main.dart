import 'package:flutter/material.dart';
import 'package:gym/Advanced.dart';
import 'package:gym/newAccount.dart';
import 'package:gym/Login.dart';
import 'package:gym/menu.dart';
import 'package:gym/ptAccount.dart';
import 'package:gym/settings.dart';
import 'package:gym/Beginner.dart';
import 'package:gym/Intermediate.dart';
import 'package:gym/ClientList.dart';
import 'package:gym/payCheck.dart';
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
        '/settings': (BuildContext context) => new settings(),
        '/Beginner': (BuildContext context) => new Beginner(),
        '/Intermediate': (BuildContext context) => new Intermediate(),
        '/Advanced': (BuildContext context) => new Advanced(),
        '/ptAccount' : (BuildContext context) => new ptAccount(),
        '/ClientList' : (BuildContext context) => new ClientList(),
        '/payCheck' : (BuildContext context) => new payCheck()
      },
      home: new LoginScreen(),
    );
  }
}

