import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  final type1 = Material(
    child: Container(
      height: 100,
      width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage("assets/images/legend.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
          ),
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          'Legend',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.white
          ),
        ),
    ),
    ),
  );

  final type2 = Material(
    child: Container(
      height: 100,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage("assets/images/casual.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
        ),
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          'Casual',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.white
          ),
        ),
      ),
    ),
  );

  final type3 = Material(
    child: Container(
      height: 100,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage("assets/images/slow.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.8), BlendMode.darken),
        ),
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          'Slow',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.white
          ),
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              iconMenu,
              Container(
                margin: const EdgeInsets.only(left: 1000.0),
              ),
              titleField,
              subtitleField,
              Container(
                margin: const EdgeInsets.only(top: 140.0),
              ),
              type1,
              Container(
                margin: const EdgeInsets.only(top: 20.0),
              ),
              type2,
              Container(
                margin: const EdgeInsets.only(top: 20.0),
              ),
              type3,
            ],
          ),
        ),
      ),
    );
  }
}