import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/menu.dart';

class newAccount extends StatelessWidget{
  //tipo de letra e tamanho
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context){
    final titleField = Text(
      "Welcome!",
      style: TextStyle(
        fontSize: 50.0,
        color: Color(0xFFF50057)
      ),
    );
    final emailField = TextField(
      obscureText: false,
      style: style, //vai buscar o de cima
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        prefixIcon: const Icon(
          Icons.email,
        ),
      ),
    );
    final userField = TextField(
      obscureText: false,
      style: style, //vai buscar o de cima
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "User Name",
        prefixIcon: const Icon(
          Icons.person,
        ),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        prefixIcon: const Icon(
          Icons.lock,
        ),
      ),
    );
    final passwordFieldRep = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Repeat Password",
        prefixIcon: const Icon(
          Icons.lock,
        ),
      ),
    );
    final buttonLogin = Material(
      child: Container(
        height: 40,
        width: 500,
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
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  menuPage()),
            );
          },
          child: Text(
            'Create Account',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white
            ),
          ),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleField,
              Container(
                margin: const EdgeInsets.only(top: 40.0),
              ),
              emailField,
              Container(
                margin: const EdgeInsets.only(top: 30.0),
              ),
              userField,
              Container(
                margin: const EdgeInsets.only(top: 20.0),
              ),
              passwordField,
              Container(
                margin: const EdgeInsets.only(top: 30.0),
              ),
              passwordFieldRep,
              Container(
                margin: const EdgeInsets.only(top: 50.0),
              ),
              buttonLogin,
            ],
          ),
        ),
      ),
    );
  }

}