import 'package:flutter/material.dart';
import 'package:gym/Advanced.dart';
import 'package:gym/helpClient.dart';
import 'package:gym/newAccount.dart';
import 'package:gym/Login.dart';
import 'package:gym/menu.dart';
import 'package:gym/ptAccount.dart';
import 'package:gym/request.dart';
import 'package:gym/settings.dart';
import 'package:gym/Beginner.dart';
import 'package:gym/Intermediate.dart';
import 'package:gym/ClientList.dart';
import 'package:gym/payCheck.dart';
import 'package:gym/giveClass.dart';
import 'package:gym/help_faq.dart';
import 'package:gym/History.dart';
import 'package:gym/History_personal_trainer.dart';
import 'package:gym/One.dart';
import 'package:gym/request.dart';
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
        '/payCheck' : (BuildContext context) => new payCheck(),
        '/giveClass' : (BuildContext context) => new giveClass(),
        '/helpClient' : (BuildContext context) => new helpClient(),
        '/HELP_faq' : (BuildContext context) => new HELP_faq(),
        '/History' : (BuildContext context) => new History(),
        '/History_personal_trainer ' : (BuildContext context) => new History_personal_trainer(),
        '/One' : (BuildContext context) => new One(),
        '/Request' : (BuildContext context) => new Request()
      },
      home: new LoginScreen(),
    );
  }
}

