import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/Auth/signup.dart';
import 'dart:async';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import 'package:meeting/src/mixins/validation_mixin.dart';
import 'package:meeting/src/mixins/alerts_mixin.dart';
import 'package:meeting/src/screens/Auth/aut_screen.dart';
class NewSignup extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<NewSignup> with ValidationMixin, AlertsMixin{
  bool _obscureText = true;
  String _password;

// Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;

    });
  }
  bool _isChecked = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(251, 251, 251, 1),
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 5),),
              //Icon(Icons.arrow_back,color: Colors.black,),
              SizedBox(width: 25,),
              Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 20),)
            ],
          )
      ),
      body: new ListView(children: <Widget>[
        Container(
          padding:EdgeInsets.only(left: 34,right: 34) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 28,),
              Align(
                alignment:Alignment.topLeft ,
                child:Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      height: 128,width: 108,
                      child: Image(
                        image:AssetImage(
                          'assets/imgs/profile.jpg',
                        ) ,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                     top:-44,
                      child: Image(
                          height: 120,width: 120,
                          image:AssetImage(
                            'assets/imgs/upload.png',
                          )
                      ),
                    )
                  ],
                )
              ),
                 SizedBox(
                   height: 42,
                 ),
              Align(
                alignment: Alignment.topLeft,
                child:Text('Phone Number',style: TextStyle(fontSize: 10),) ,
              ),
              TextField(
                  cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                  cursorWidth: 3,
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.phone_android,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                    hintText: "Enter Your Phone Number",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                    ),
                  )

              ),
              SizedBox(height: 24,),
              Align(
                alignment:Alignment.topLeft ,
                child:Text('Country',style: TextStyle(fontSize: 10),),
              ),
              TextField(
                  cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                  cursorWidth: 3,
                  //controller: password_confirmation,
                  keyboardType:TextInputType.text,
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.flag,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                    suffixIcon:Icon(Icons.expand_more,color:Colors.black) ,
                    hintText: "Select Your Country",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                    ),
                  )

              ),
              SizedBox(height: 24,),
              Align(
                alignment:Alignment.topLeft ,
                child:Text('Currency',style: TextStyle(fontSize: 10),),
              ),
              TextField(
                  cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                  cursorWidth: 3,
                  //controller: password_confirmation,
                  keyboardType:TextInputType.text,
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.attach_money,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                    suffixIcon:Icon(Icons.expand_more,color:Colors.black) ,
                    hintText: "Select Your Currency",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                    ),
                  )

              ),
              SizedBox(height: 10,),
              SizedBox(height: 5,),
              SizedBox(height: 40,),
              Center(
                child: Column(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 163.0,
                      height: 38.0,
                      child:FlatButton(
                        shape: new RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white)),
                        color:Color.fromRGBO(191, 145, 67, 1),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {},
                        child: Text(
                          "Sign up ",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 29,),

                  ],
                ),
              )
            ],
          ),
        ),

      ]
      ),

    );
  }
////////////
///

///////////
}
// انشاء كلاس ثم انشاء constructer
