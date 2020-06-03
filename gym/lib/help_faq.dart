import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HELP_faq extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: new Title(color: Colors.black, child:
        Text(
            'HELP',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black) ),
        ),
      ),
      body:   //Column(
      //children: <Widget>[
      ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Who is Gymtastic for?'),
              subtitle: Text('Anyone over the age of 18 can train with Gymtastic, regardless of fitness level. We welcome people of all ages, body shapes, and abilities.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('I’m completely out of shape, is this for me?'),
              subtitle: Text('You don’t have to be fit to train with us — you train with us to get fit! Gymtastic is suitable for complete beginners — our three levels of progression mean that a professional athlete and someone exercising for the first time can both do the same session, and each will get a challenging workout.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Do you offer personal training?'),
              subtitle: Text('In fact we do and encourage it. You can discuss your goals with your PT, how to achieve them and accomplish faster and long lasting results if you have the right person by your side giving you feedback.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('What type of memberships do you offer?'),
              subtitle: Text('To have full access and custom made workouts, you need to register and pay monthly 10 euros.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('What’s your cancellation policy?'),
              subtitle: Text('There is no cancelation fee, you can unsubscribe whenever you want.'),
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
        ],
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