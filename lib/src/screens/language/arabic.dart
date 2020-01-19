import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
import 'dart:ui';
import 'package:meeting/src/out_package/page_transition.dart';
import 'package:meeting/src/screens/language/english.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meeting/src/screens/intro_screen/first_intro.dart';
class Arabic extends StatefulWidget {
  @override
  IntroState createState() => new IntroState();
}

class IntroState extends State<Arabic>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length:2);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/imgs/language_background_2.png',
              ),
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Positioned(
              bottom: 61,
              child: new Container(
                  padding: EdgeInsets.only(left: 20),
                  child:Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                          Container(
                            child: InkWell(
                                child:Text(
                                  'English',style: TextStyle(fontSize: 22,color: Colors.grey,
                                    fontWeight:FontWeight.bold,
                                    fontFamily: 'Almarai-Bold'
                                ),
                                ) ,
                                onTap: () {
                                  Navigator.push(context,
                                      PageTransition(type:
                                      PageTransitionType.fade,
                                          child: Intro()));  ;
                                }
                            ),
                          ),


                          SizedBox(width: 10,),
                          Text(
                            '|',style: TextStyle(fontSize: 22,color: Colors.white,
                              fontWeight:FontWeight.bold,
                              fontFamily: 'Roboto-Black'
                          ),
                          ),
                          SizedBox(width: 10,),

                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color:Color.fromRGBO(191, 145, 67, 1),width: 3.0,),
                              ),
                            ),
                            child:Text(
                              'العربيه',style: TextStyle(fontSize: 22,color: Colors.white,
                                fontWeight:FontWeight.bold,
                                fontFamily: 'Almarai-Bold'
                            ),
                            ) ,

                          ),


                          SizedBox(width: 100,),
                          Padding(
                            padding:EdgeInsets.only(left: 38) ,
                          ),
                          ButtonTheme(
                            minWidth: 10.0,
                            height: 10.0,
                            child:FlatButton(
                              onPressed:() {
    Navigator.push(context,
    PageTransition(type:
    PageTransitionType.rightToLeftWithFade,
    child: First()));
    },
                                 color:Color.fromRGBO(191, 145, 67, 1),
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center, // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.arrow_forward,size: 25,color: Colors.white,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding:EdgeInsets.only(left:20 ) ,
                      ),

                    ],
                  )

              ),
            ),
          ],
        ),
      ]),

    );

  }

}
