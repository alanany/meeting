import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:meeting/src/widgets/custom_form_widgets.dart';
import 'package:meeting/src/models/http_exception.dart';
import 'dart:convert';
import 'package:meeting/src/providers/auth.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import 'package:meeting/src/mixins/validation_mixin.dart';
import 'package:meeting/src/mixins/alerts_mixin.dart';
import 'package:meeting/src/screens/Auth/aut_screen.dart';
import 'package:meeting/src/screens/Auth/login.dart';
import 'package:meeting/src/screens/Auth/NewSignup.dart';
import 'package:meeting/src/out_package/page_transition.dart';
class Signup extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}
int _centerWidgetIndex = 0;
var args;
class _SignupPageState extends State<Signup> with ValidationMixin, AlertsMixin{

  bool _obscureText = true;
  String _password;
  final GlobalKey<FormState> _globalKey = GlobalKey();
  Map<String, String> _loginData = {
    'email': '',
    'password': '',
    'Name':'',
    'Address':'',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();
// Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;

    });
  }
  bool _isChecked = false;
  int _currentIndex = 0;
  Future<void> _submit() async {
    if (!_globalKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _globalKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    try {
      await Provider.of<Au>(context, listen: false).login(
        _loginData['email'],
        _loginData['password'],

      );
    }on HttpException catch (error){
      //showInSnackBar1();
    };
    if (status) {
      showInSnackBar();
      // msgStatus=databaseHelper.data;
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) =>
              NewSignup()), (Route<dynamic> route) => false);
      //Navigator.of(context).pushNamed('/NavigationtPage');
    }

    setState(() {
      _isLoading = false;
    });
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: _scaffoldKey,
      backgroundColor:Color.fromRGBO(251, 251, 251, 1),
      appBar: AppBar(
          bottomOpacity:.25,
          elevation: 1,
          backgroundColor: Colors.white,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 5),),
            SizedBox(width: 25,),
              Text('Sign up',style: TextStyle(color: Colors.black,fontSize: 20),)
            ],
          )
      ),
      body: new ListView(children: <Widget>[
        Form(
          key: _globalKey,
          child: Container(
            padding:EdgeInsets.only(left: 34,right: 34) ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: 40,),
                Align(
                  alignment:Alignment.topLeft ,
                  child:Text('Name',style: TextStyle(fontSize: 10),),
                ),
                MyCustomInput(
                  onFieldSubmitted: (val) {

                  },
                  onSaved: (val) {

                    _loginData['Name'] = val;

                  },
                  validator:validatename,
                    cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                    cursorWidth: 3,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.person,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                      labelText: "Enter Your Name",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                      ),

                ),
                SizedBox(height: 19,),
                Align(
                  alignment:Alignment.topLeft ,
                  child:Text('Email',style: TextStyle(fontSize: 10),),
                ),
                MyCustomInput(
                  validator:validateEmail,
                  onFieldSubmitted: (val) {

                  },
                  onSaved: (val) {

                    _loginData['email'] = val;

                  },
                  cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                    cursorWidth: 3,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.email,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                      labelText: "Enter Your Email",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                      ),

                ),

                SizedBox(height: 19,),
                Align(
                  alignment:Alignment.topLeft ,
                  child:Text('Address',style: TextStyle(fontSize: 10),),
                ),
                MyCustomInput(
                  onSaved: (value) {
                    _loginData['Address'] = value;
                  },onFieldSubmitted: (val) {
                },
                    cursorColor:Color.fromRGBO(223, 177, 99, 1) ,
                    cursorWidth: 3,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.location_on,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                      suffixIcon:Icon(Icons.my_location,color:Color.fromRGBO(223, 177, 99, 1 )) ,
                      labelText: "Your Address (optional)",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color.fromRGBO(203, 204, 208, 1)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3.0,color:Color.fromRGBO(223, 177, 99, 1)),
                      ),

                ),

                SizedBox(height: 19,),
                Align(
                  alignment:Alignment.topLeft ,
                  child:Text('Password',style: TextStyle(fontSize: 10),),
                ),
                MyCustomInput(
                  validator:validatePassword,
                  onSaved: (value) {
                    _loginData['password'] = value;
                  },onFieldSubmitted: (val) {
                },
                  obsecureText: _obscureText,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.lock_outline,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
                  suffixIcon:InkWell(
                    onTap:_toggle,
                    child:Icon(Icons.remove_red_eye,color: Color.fromRGBO(203, 204, 208, 1),size: 25,) ,
                  ) ,
                  labelText: "Strong Password here",


                ),
                SizedBox(height: 10,),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool val) => setState(() => _isChecked = val),
                      activeColor:Color.fromRGBO(223, 177, 99, 1),
                    ),

                    SizedBox(width: 6.6),
                    Text("I agree with the ",style: TextStyle(fontSize: 12,fontFamily: "Roboto-Regular")),
                    InkWell(
                      child:Text("Terms and Condition",style: TextStyle(fontSize: 12,fontFamily: "Roboto-Regular",
                          color: Color.fromRGBO(223, 177, 99, 1)
                      ),),
                    ),

                  ],
                ),
                SizedBox(height: 24,),
                Center(
                  child: Column(
                    children: <Widget>[
                      if (_isLoading)
                        CircularProgressIndicator()
                      else
                      ButtonTheme(
                        minWidth: 163.0,
                        height: 38.0,
                        child:FlatButton(
                          shape: new RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white)),
                          color:Color.fromRGBO(191, 145, 67, 1),
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed:_submit,
                          child: Text(
                            "Sign Up ",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 29,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Already have an account? ',style: TextStyle(
                            fontSize: 12,)),
                          InkWell(
                            child:Text(' Sign in here',style: TextStyle(
                                fontSize: 12,
                                color:Color.fromRGBO(191, 145, 67, 1) ),)
                            ,onTap: () {
                            Navigator.of(context).push(
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>  Login()));
                          },
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 27,),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child:Container(
            height: 60,
            color: Color.fromRGBO(242, 241, 242, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 38,top: 20,bottom: 21),
                ),
                Text('Or Sign Up with',style: TextStyle(
                    fontSize: 14,
                    color:Colors.black )),
                SizedBox(width: 96,),
                InkWell(
                  child:Image(image: AssetImage('assets/imgs/g.png'),width:20,height: 20 ,) ,
                ),
                SizedBox(width: 30,),
                Container(
                  width: 1,
                  height: double.maxFinite,
                  color: Colors.grey,
                ),
                SizedBox(width: 26,),
                InkWell(
                  child:Image(image: AssetImage('assets/imgs/f.png'),width:30,height: 30 ,) ,
                ),
              ],
            ),
          ) ,
        )

      ]
      ),

    );
  }
////////////
///
  Future<void> showInSnackBar() async {
    _scaffoldKey.currentState.showSnackBar(new SnackBar
      (content: new Container(
      height: 40,
      child: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Regertration Faild ',
                style: TextStyle(fontSize: 20,
                    fontFamily: 'Almarai',color: Colors.white

                )
                ,),
              SizedBox(width: 6,),
              Image(
                image: AssetImage('assets/imgs/sad.png'),
              )
            ],
          )
      ),
    )
    )
    );
  }
///////////
}


