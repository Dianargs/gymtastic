import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/Beginner.dart';
import 'package:gym/Intermediate.dart';
import 'package:gym/menu.dart';
import 'package:gym/settings.dart';
import 'package:gym/Advanced.dart';
import 'package:gym/Login.dart';
import 'package:gym/ClientList.dart';
import 'package:gym/help_faq.dart';
import 'package:gym/History_personal_trainer.dart';

class payCheck extends StatelessWidget{
  final titleField = Text(
    "     Balance: 40€",
    style: TextStyle(
        fontSize: 40.0,
        color: Color(0xFFF50057)
    ),
  );
  final space = Text(
    "    ",
    style: TextStyle(
        fontSize: 12.0,
        color: Color(0xFFF50057)
    ),
  );
  final subtitleField = Text(
    "   Transactions:",
    style: TextStyle(
        fontSize: 20.0,
        color: Color(0xFF2979FF)
    ),
  );
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: new Title(color: Colors.black, child:
        Text(
            'Wallet',
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
                    title: Text('PayCheck',
                      style: TextStyle(color: Color(0xFFF50057))
                    ),
                    trailing: Icon(Icons.attach_money),
                    onTap: (){
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
          padding: const EdgeInsets.all(5.0),
          child:
                ListView(
                  children: <Widget>[
                    titleField,
                    space,
                    subtitleField,
                    ListTile(
                      title: Text('01-06-2020       Received + 3€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('30-05-2020       Received + 7€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('29-05-2020       Received + 2,5€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('17-05-2020       Received + 2,5€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('14-05-2020       Received + 5€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('10-05-2020       Received + 2,5€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('08-05-2020       Received + 5€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    ListTile(
                      title: Text('07-05-2020       Received + 3€'),
                      leading: Icon(Icons.attach_money),
                    ),
                    RaisedButton(
                      color: Colors.white,
                      child: Text(
                        "Withdraw Money",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      elevation: 6.0,

                    )

                  ],
                )



          ),
        )

    );
  }
}