import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/Auth/signup.dart';
import 'package:meeting/src/screens/tabs/home.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:meeting/src/widgets/custom_form_widgets.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import 'package:meeting/src/mixins/validation_mixin.dart';
import 'package:meeting/src/mixins/alerts_mixin.dart';
import 'package:meeting/src/screens/Auth/aut_screen.dart';
import 'package:meeting/src/out_package/page_transition.dart';
import 'package:meeting/src/models/http_exception.dart';
import 'package:meeting/src/providers/Auth_provider.dart';
import 'package:meeting/src/providers/auth.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
class _LoginPageState extends State<Login> {
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
              //Icon(Icons.arrow_back,color: Colors.black,),
              SizedBox(width: 25,),
              Text('Sign In',style: TextStyle(color: Colors.black,fontSize: 20),)
            ],
          )
      ),
      body: new ListView(children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 33,),
              Text('Sign in to Meeting',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              SizedBox(height: 21,),
              Text('Start the search to find the hall that suits you ',
                style: TextStyle
                  (fontSize: 12,
                    color: Colors.black),),
              Text(' Then book it',
                style: TextStyle
                  (fontSize: 12,
                    color: Colors.black),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
        Container(
          padding:EdgeInsets.only(left: 32,right: 32) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AuthCard()
            ],
          ),

        ),
        SizedBox(height: 60,),
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
                Text('Or Sign in with',style: TextStyle(
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

///////////
}
// انشاء كلاس ثم انشاء للفورم
class AuthCard extends StatefulWidget {
  const AuthCard({
    Key key,
  }) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> with ValidationMixin, AlertsMixin{
  //انشاء متغير يتعرف فى كل مكان global
  final GlobalKey<FormState> _globalKey = GlobalKey();
  Map<String, String> _loginData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();
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
              NavigationtPage()), (Route<dynamic> route) => false);
      //Navigator.of(context).pushNamed('/NavigationtPage');
    }

    setState(() {
      _isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;
    return Form(
      key: _globalKey,
      child: Column(
        children: <Widget>[
          Align(
            alignment:Alignment.topLeft ,
            child:Text('Email',style: TextStyle(fontSize: 10),),
          ),
          MyCustomInput(
            onFieldSubmitted: (val) {

            },
            validator:validateEmail,
            labelText: 'Enter your Email',
            textInputAction: TextInputAction.next,
            inputType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.email,color: Color.fromRGBO(203, 204, 208, 1),size: 25,),
            onSaved: (val) {

              _loginData['email'] = val;

            },
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
                activeColor:Color.fromRGBO(223, 177, 99, 1),
                onChanged: (bool val) => setState(() => _isChecked = val),
              ),
              SizedBox(width: 6.6),
              Text("Remember me",style: TextStyle(fontSize: 12,fontFamily: "Roboto-Regular")),
              SizedBox(width: 81,),
              Text("Forget Password ?",style: TextStyle(fontSize: 12,fontFamily: "Roboto-Regular"),),
            ],
          ),
          SizedBox(height: 31,),
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
                      onPressed: _submit,
                      child: Text(
                        "Sign In ",
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
                    Text('New User? ',style: TextStyle(
                      fontSize: 12,)),
                    InkWell(
                      child:Text('Sign up here',style: TextStyle(
                          fontSize: 12,
                          color:Color.fromRGBO(191, 145, 67, 1) ),)
                      ,
                      onTap: () {
                        Navigator.push(context,
                            PageTransition(type:
                            PageTransitionType.rightToLeftWithFade,
                                child: Signup()));
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
Future<void> showInSnackBar() async {
  _scaffoldKey.currentState.showSnackBar(new SnackBar
    (content: new Container(
    height: 40,
    child: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Check Email And Password ',
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
