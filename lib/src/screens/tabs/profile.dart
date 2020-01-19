import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;
class Profile extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(245, 252, 255, 1),
      body: new ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 22)),
        new Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 110),
            ),
            Text(
              ' profile',
              style: TextStyle(
                  fontSize: 22.5,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(width:90,),

            IconButton(icon: Icon(Icons.arrow_forward,color: Colors.blue,size: 30.2,), onPressed: null),

          ],
        ),
        SizedBox(height: 70),


      ]),

    );
  }
////////////
///

///////////
}
// انشاء كلاس ثم انشاء constructer
