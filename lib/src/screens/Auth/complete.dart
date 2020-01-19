import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/Auth/login.dart';
import 'dart:async';
import 'dart:convert';
import 'package:meeting/src/out_package/page_transition.dart';
import 'package:http/http.dart'as http;
import 'package:meeting/src/screens/Auth/signup.dart';
import 'package:meeting/src/screens/Auth/NewSignup.dart';
class Complete extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<Complete> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(251, 251, 251, 1),
      body: new ListView(children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 195,),
              Image(
                image: AssetImage('assets/imgs/success.png'),
                width: 55,height: 55,
              ),
              Text(' Registration completed ',style: TextStyle(wordSpacing: 5,
                  fontWeight: FontWeight.bold,fontSize: 15,
                  color: Colors.black),),
              Text('successfully',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 15,
                  color: Colors.black),),
              Text('You can now complete the reservation',
                style: TextStyle
                  (fontSize: 12,
                    color: Color.fromRGBO(170, 170, 170, 1)),),
              SizedBox(height: 170),
              ButtonTheme(
                minWidth: 175.0,
                height: 38.0,
                child:FlatButton(
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                  color:Color.fromRGBO(191, 145, 67, 1),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(context,
                        PageTransition(type:
                        PageTransitionType.rightToLeftWithFade,
                            child: NewSignup()));
                  },

                  child: Text(
                    "Complete The Reservation",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),

    );
  }
////////////
///

///////////
}
// انشاء كلاس ثم انشاء constructer
