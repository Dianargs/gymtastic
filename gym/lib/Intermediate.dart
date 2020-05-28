import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Intermediate extends StatelessWidget{

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Start Workout"),
          content: new Text("Would you like to workout with a personal trainer?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Solo"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Request PT"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
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
    "Choose your workout",
    style: TextStyle(
        fontSize: 40.0,
        color: Color(0xFFF50057)
    ),
  );
  final subtitleField = Text(
    "Request a personal trainer to help you!",
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
            'Intermediate',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black) ),
        ),
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
              Material(
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
                      _showDialog(context);
                    },
                    child: Text(
                      'Upper Body',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),

              ),
              Material(
                child: Container(
                  height: 120,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/legs.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      _showDialog(context);
                    },
                    child: Text(
                      'Legs',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
              ),
              Material(
                child: Container(
                  height: 120,//100
                  width: 600,//500
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
                      _showDialog(context);
                    },
                    child: Text(
                      'Cardio',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}