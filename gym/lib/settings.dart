import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class settings extends StatelessWidget{

  bool val = true;
  bool vals = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: new Title(color: Colors.black, child:
        Text(
            'Settings',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black) ),
        ),
      ),
      body:   //Column(
              //children: <Widget>[
                ListView(
                children: <Widget>[
                 new ListTile(
                     title: Text('Notifications'),
                     leading: Icon(Icons.notifications),
                     trailing: new Switch(
                        value: true,
                        onChanged: (bool vals){
                        print(vals);
                        },
                        activeColor: Color(0xFF2979FF),
                        )//definir cores
                    ),
                 new ListTile(
                     title: Text('Night Mode'),
                     leading: Icon(Icons.brightness_2),
                     trailing: new Switch(
                        value: false,
                        onChanged: (bool val){
                        print(val);
                          },
                        activeColor: Color(0xFF2979FF),
                        )//definir cores
                    ),
                 new ListTile(
                     title: Text('Language'),
                     leading: Icon(Icons.settings),
                     trailing: new DropdownButton<String>(
                        value: 'English',
                        dropdownColor: Color(0xFFFAFAFA),
                        items: <String>['English', 'Portuguese', 'French', 'Spanish'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value,
                          style: TextStyle(
                            color: Colors.black,
                            ),
                          ),
                        );
                        }).toList(),
                      onChanged: (_) {},
                  )
                  ),
                 new ListTile(
                     title: Text('Account and profile'),
                     leading: Icon(Icons.account_circle),
                     trailing: new RaisedButton(onPressed: () {},
                        child: Text('Edit'),
                        color: Color(0xFFFAFAFA),
                      ),
                  ),
                 new ListTile(
                     title: Text('Privacy and security'),
                     leading: Icon(Icons.lock),
                     trailing: new RaisedButton(onPressed: () {},
                        child: Text('Edit'),
                        color: Color(0xFFFAFAFA),
                     ),
                  ),
                 new ListTile(
                    title: Container(

                      height: 200,
                      width: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      SizedBox(
                      child:  Image.asset(
                        "assets/images/logo.png",
                        //fit: BoxFit.,
                      ),
                    ),
                    ]
                  )

                    )
                  ),
               ]
                ),



              );
                //SizedBox(
                //  child:  Image.asset(
                //    "assets/images/logo.png",
                //    fit: BoxFit.contain,
                //  ),
                //),
    //]
      //)



  }
}