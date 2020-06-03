import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/Beginner.dart';
import 'package:gym/Intermediate.dart';
import 'package:gym/menu.dart';
import 'package:gym/settings.dart';
import 'package:gym/Advanced.dart';
import 'package:gym/Login.dart';
import 'package:gym/ClientList.dart';
import 'package:gym/payCheck.dart';
import 'package:gym/giveClass.dart';
import 'package:gym/helpClient.dart';
import 'package:gym/help_faq.dart';
import 'package:gym/History_personal_trainer.dart';

class ptAccount extends StatelessWidget{

  final iconMenu  = Row(
    children: <Widget>[
      Icon(
        Icons.dehaze,
        color: Colors.black,
      )
    ],
  );
  //titulo
  final titleField = Text(
    "Personal Trainer",
    style: TextStyle(
        fontSize: 40.0,
        color: Color(0xFFF50057)
    ),
  );
  final subtitleField = Text(
    "What do you want to do today?",
    style: TextStyle(
        fontSize: 20.0,
        color: Color(0xFF2979FF)
    ),
  );


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: new Title(color: Colors.black, child:
        Text(
            'GymTastic',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black) ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('User'),
                  accountEmail: new Text('email@user.com'),
                  currentAccountPicture : new CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.all(100.0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFF50057),
                          Color(0xFF2979FF),
                        ],
                      )
                  ),
                ),
                new ListTile(
                  title: Text('Settings'),
                  trailing: Icon(Icons.settings),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  settings()),
                    );
                  },
                ),
                new ListTile(
                    title: Text('History'),
                    trailing: Icon(Icons.history),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  History_personal_trainer()),
                    );
                  },
                ),
                new ListTile(
                  title: Text('Leave Personal Account'),
                  trailing: Icon(Icons.person),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  menuPage()),
                    );
                  },
                ),
                new ListTile(
                  title: Text('PayCheck'),
                  trailing: Icon(Icons.attach_money),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  payCheck()),
                    );
                  },
                ),
                new ListTile(
                  title: Text('List of Clients'),
                  trailing: Icon(Icons.person_outline),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ClientList()),
                    );
                  },
                ),
                new ListTile(
                    title: Text('Help'),
                    trailing: Icon(Icons.help_outline),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HELP_faq()),
                    );
                  },
                ),
                new ListTile(
                  title: Text('Log out'),
                  trailing: Icon(Icons.exit_to_app),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginScreen()),
                    );
                  },
                ),
              ]
          )
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5.0),//36
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //iconMenu,
              //Container(
              //  margin: const EdgeInsets.only(left: 1000.0),
              //),
              titleField,
              subtitleField,
              Container(
                //height: 120.0,
                margin: const EdgeInsets.only(top: 60.0),//140
              ),
              Classes(),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
             singleClass(),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
              helper(),
            ],
          ),
        ),
      ),
    );
  }
}
class Classes extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: 120,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/Classes.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
        ),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  giveClass()),
            );
          },
          child: Text(
            'Give a class!',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
class singleClass extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: 120,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/singleClasses.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
        ),
        child: MaterialButton(
          onPressed: (){
           /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Intermediate()),
            );*/
          },
          child: Text(
            'One o One',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
class helper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: 120,//100
        width: 600,//500
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/Help.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
        ),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  helpClient()),
            );
          },
          child: Text(
            'Help Someone',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
