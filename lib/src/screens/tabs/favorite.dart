import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;
class Favorite extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<Favorite> {

  @override
  Widget build(BuildContext context) {
    return


      Scaffold(
      backgroundColor:Color.fromRGBO(245, 252, 255, 1),
      body: new ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 22)),
        new Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 110),
            ),
            Text(
              'favorite',
              style: TextStyle(
                  fontSize: 22.5,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold),
            ),



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
