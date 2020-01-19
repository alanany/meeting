import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/Auth/login.dart';
import 'dart:async';
import 'package:meeting/src/out_package/page_transition.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meeting/src/screens/Auth/signup.dart';
class Auth extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<Auth> {

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
               image: AssetImage('assets/imgs/login_icon.png'),
               width: 55,height: 55,
             ),
             SizedBox(height: 24,),
             Text('Login In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),),
             SizedBox(height: 10,),
             Text('Sorry, to complete the reservation ',
               style: TextStyle
                 (fontSize: 12,
                   color: Color.fromRGBO(170, 170, 170, 1)),),
             Text('you must first log in',
                 style: TextStyle
                 (fontSize: 12,
                 color: Color.fromRGBO(170, 170, 170, 1)),
             ),
                  SizedBox(height: 170),
             ButtonTheme(
               minWidth: 163.0,
               height: 38.0,
               child:FlatButton(
                 shape: new RoundedRectangleBorder(
                     side: BorderSide(color: Colors.white)),
                 color: Color.fromRGBO(143, 143, 143, 1),
                 textColor: Colors.white,
                 padding: EdgeInsets.all(8.0),
                 onPressed: () {
                   Navigator.push(context,
                       PageTransition(type:
                       PageTransitionType.rightToLeftWithFade,
                           child: Login()));
                 },
                 child: Text(
                   "Sign In ",
                   style: TextStyle(
                     fontSize: 14.0,
                   ),
                 ),
               ),
             ),
             SizedBox(height: 14),
             ButtonTheme(
               minWidth: 163.0,
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
                           child: Signup()));
                 },
                 child: Text(
                   "Sign Up",
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
