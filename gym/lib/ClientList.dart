import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/History_personal_trainer.dart';
import 'package:gym/payCheck.dart';
import 'package:gym/settings.dart';
import 'package:gym/menu.dart';
import 'package:gym/Login.dart';
import 'package:gym/help_faq.dart';

class ClientList extends StatelessWidget{

  final titleField = Text(
    "Clients List",
    style: TextStyle(
        fontSize: 35.0,
        color: Color(0xFFF50057)
    ),
  );

  @override
  Widget build(BuildContext context){

    TextStyle applyStyle  = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

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
              Container(
                //height: 120.0,
                margin: const EdgeInsets.only(top: 50.0),//140
              ),
              viewClient(),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
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

class viewClient extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('Joana Ferreira'),
            subtitle: Text('Next Appointment:  2020/06/12    2:00PM'),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('Filipe Rodrigues'),
            subtitle: Text('Next Appointment:  2020/06/15    8:00AM'),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('Sofia Amarante'),
            subtitle: Text('Next Appointment:  2020/06/15    5:00PM'),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('João Santos'),
            subtitle: Text('Next Appointment:  2020/06/15    8:00PM'),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('Rodrigo Correia'),
            subtitle: Text('Next Appointment:  2020/06/16    15:00PM'),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline, size: 50),
            title: Text('Maria Lemos'),
            subtitle: Text('Next Appointment:  2020/06/17    7:00AM'),
          ),
        ],
      ),
    );
  }
}
