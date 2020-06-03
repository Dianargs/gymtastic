import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class History_personal_trainer extends StatelessWidget{

  @override
  void _showDialog(BuildContext context) {
    // flutter defined function

    showDialog(context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Workout"),
          content: new Text("Would you like to analyze this training?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Show analytics"),
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
    ],
  );
  //titulo
  final titleField = Text(
    "Workouts activity",
    style: TextStyle(
        fontSize: 30.0,
        color: Color(0xFFF50057)
    ),
  );
  final subtitleField = Text(
    "Complete list of all DONE workouts!!",
    style: TextStyle(
        fontSize: 10.0,
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
            ' [PT] History',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black) ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),//36
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('20'),
                        Text('Workouts')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('4.2/5'),
                        Text('Rating')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('26'),
                        Text('Students')
                      ],
                    )
                  ],
                ),
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
                      '[USER A] | Upper Body | Monday - 23/03/2020 | 18:45min ',
                      style: TextStyle(
                          fontSize: 20.0,
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
                      '[USER A] | Upper Body | Friday - 20/03/2020 | 20:15min ',
                      style: TextStyle(
                          fontSize: 20.0,
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
                      '[USER B] | Legs | Thursday - 19/03/2020 | 22:18min ',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
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