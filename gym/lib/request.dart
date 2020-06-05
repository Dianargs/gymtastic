import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/payCheck.dart';
import 'package:gym/settings.dart';
import 'package:gym/menu.dart';
import 'package:gym/Login.dart';
import 'package:gym/ClientList.dart';
import 'package:gym/help_faq.dart';
import 'package:gym/History.dart';

class Request extends StatelessWidget{
  @override
  void _showDialog(BuildContext context) {
    // flutter defined function

    showDialog(context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Rate your Trainer"),
          content: new Text("Thank you for your support."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            Row(
              children: <Widget>[
                Icon(Icons.star_border, size: 50.0),
                Icon(Icons.star_border, size: 50.0),
                Icon(Icons.star_border, size: 50.0),
                Icon(Icons.star_border, size: 50.0),
                Icon(Icons.star_border, size: 50.0),

              ],
            ),
          ],
        );
      },
    );
  }
  final titleField = Text(
    "First Set",
    style: TextStyle(
        fontSize: 25.0,
        color: Color(0xFFF50057)
    ),
  );

  @override
  Widget build(BuildContext context){

    TextStyle applyStyle  = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    Image img = Image.asset(('assets/images/singleClass.png'));
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
                      MaterialPageRoute(builder: (context) =>  History()),
                    );
                  },
                ),
                new ListTile(
                  title: Text('Leave to Personal Account'),
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
                  title: Text('List of Clients',
                    style: TextStyle(color: Color(0xFFF50057)),
                  ),
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
                new Container(
                  margin: const EdgeInsets.only(top:100.0),
                ),
                new ListTile(
                  title: Text('Become a trainer',
                    style: applyStyle,
                  ),
                  leading: Icon(Icons.fitness_center, color:Color(0xFFF50057),size: 40.0),
                ),
                new ListTile(
                  leading: GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(left: 50.0),
                      child: new MaterialButton(
                        onPressed: () {},
                        child: Text('Apply here'),
                      ),
                      height: 35,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
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
                  ),

                )
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

              titleField,

              img,
              new ListTile(
                title: Text('Rate your trainer'),
                subtitle: Text('Trainer:  Sofia Soares'),
                trailing: Icon(Icons.star),
                onTap: (){
                    _showDialog(context);
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
