import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
import 'package:meeting/src/screens/language/english.dart';
import 'dart:ui';
import 'package:meeting/src/out_package/page_transition.dart';
import 'package:meeting/src/screens/language/arabic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<Splash>
    with SingleTickerProviderStateMixin {

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    if(value != '0'){
      Navigator.push(context,
          PageTransition(type:
          PageTransitionType.rightToLeftWithFade,
              child: Arabic()));
    }else{
      Navigator.push(context,
          PageTransition(type:
          PageTransitionType.rightToLeftWithFade,
              child: Arabic()));
    }
  }

  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, read);

  }


  @override
  initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 3));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeInOutExpo,
       );

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/imgs/back.jpg',
              ),
            ),
          ),
        ),
        Center(
          child:Image.asset(
            'assets/imgs/logo.png',
            width: animation.value * 450,
            height: animation.value * 450,
          ) ,
        )

      ]),
    );
  }
}
