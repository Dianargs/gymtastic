import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/newAccount.dart';
import 'package:gym/menu.dart';
const users = const {
  //emails e passes
};

class LoginScreen extends StatelessWidget{
  //tipo de letra e tamanho
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context){
    final emailField = TextField(

      obscureText: false,
      style: style, //vai buscar o de cima
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email or User name",
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
    final buttonLogin = Material(
      child: Container(
          height: 50,
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
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white
              ),
            ),
          ),
        ),
    );
    final signField = Text(
        "Don't have an account ?",

    );
    final signButton =  Material(
      child: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  newAccount()),
          );
        },
        child: Text(
          'Create an Account',
          style: TextStyle(
              color: Color(0xFFF50057),
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
                SizedBox(
                  child:  Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),

                ),
                emailField,
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                ),
                passwordField,
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                ),
                buttonLogin,
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                ),
                signField,
                signButton,
              ],
            ),
          ),
        ),
    );
  }

}