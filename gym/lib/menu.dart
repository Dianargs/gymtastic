import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/Beginner.dart';
import 'package:gym/Intermediate.dart';
import 'package:gym/settings.dart';
import 'package:gym/Advanced.dart';
import 'package:gym/Login.dart';


class menuPage extends StatelessWidget{

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
    "Welcome Back!",
    style: TextStyle(
        fontSize: 40.0,
        color: Color(0xFFF50057)
    ),
  );
  final subtitleField = Text(
    "How are you feeling today?",
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
                trailing: Icon(Icons.history)
            ),
            new ListTile(
                title: Text('Help'),
                trailing: Icon(Icons.help_outline)
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
              EAdvanced(),

              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
              EIntermediate(),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
              EBeginner(),
            ],
          ),
        ),
      ),
    );
  }
}
class EAdvanced extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: 120,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/legend.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
        ),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Advanced()),
            );
        },
          child: Text(
            'Advanced',
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
class EIntermediate extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: 120,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/casual.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
        ),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Intermediate()),
            );
          },
          child: Text(
            'Intermediate',
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
class EBeginner extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Material(
        child: Container(
          height: 120,//100
          width: 600,//500
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage("assets/images/slow.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
            ),
          ),
          child: MaterialButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Beginner()),
              );
            },
            child: Text(
              'Beginner',
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