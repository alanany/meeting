import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
import 'dart:ui';
import 'package:meeting/src/out_package/page_transition.dart';
import 'package:meeting/src/screens/language/english.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meeting/src/screens/intro_screen/first_intro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Second extends StatefulWidget {
  @override
  IntroState createState() => new IntroState();
}
int _activeCarouselIndex = 0;

class IntroState extends State<First>
    with SingleTickerProviderStateMixin {

  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(children: <Widget>[
        CarouselSlider(
          height: double.infinity,
          items: [0, 1, 2]
              .map(
                (f) => f == 0
                ? Container(

              child: Image.asset(
                'assets/imgs/onboarding_background_2.png',
                fit: BoxFit.cover,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            )
                : Image.asset(
              'assets/imgs/onboarding_background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
              repeat: ImageRepeat.noRepeat,
            ),
          )
              .toList(),
          autoPlay: true,
          viewportFraction: 1.0,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: true,
          onPageChanged: (i) {
            setState(() {
              _activeCarouselIndex = i;
            });
          },
          scrollPhysics: ClampingScrollPhysics(),
          initialPage: 0,
        ),
        Positioned(
          bottom: 30.0,
          left: 30.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [0, 1, 2]
                .map((f) => AnimatedContainer(
              duration: Duration(milliseconds: 100),
              width: 40.0,
              margin: const EdgeInsets.symmetric(
                  horizontal: 2.0),
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: f == _activeCarouselIndex
                    ? Colors.orange
                    : Colors.grey,
              ),
            ))
                .toList(),
          ),
        ),

        Stack(
          children: <Widget>[
            Positioned(
              bottom: 20,
              child: new Container(
                  child:Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.only(left: 230) ,
                          ),

                          ButtonTheme(
                            minWidth: 93.0,
                            height: 36.0,
                            child:FlatButton(
                              shape: new RoundedRectangleBorder(
                                  side: BorderSide(color:Colors.grey)),
                              color: Colors.transparent,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {
                              },
                              child: Text(
                                "skip".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            ),
            Positioned(
              bottom:104,
              child:Container(
                  width: 257.2,
                  height:314 ,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color:Colors.white,width: 2.0),
                        top: BorderSide(color:Colors.white,width: 2.0),
                        right:  BorderSide(color:Colors.white,width: 2.0)
                    ),
                  ),
                  child:Container(
                    padding:EdgeInsets.all(40.2) ,
                    child:Column(
                      children: <Widget>[
                        Text(
                          'Wedding halls',style: TextStyle(fontSize: 44,color: Colors.white,
                            fontFamily: 'Playfair Display'
                        ),
                        ) ,
                        SizedBox(height: 10,),
                        Text(
                          'You can book the wedding hall that suits you '
                              'in terms of price, number and evaluation',
                          style: TextStyle(fontSize: 14,color: Colors.white,fontFamily: 'Roboto-Regular'

                          ),
                        ) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('-----------',style: TextStyle(color: Colors.white,fontSize: 25),),
                            Icon(Icons.arrow_forward,color:Colors.white ,size: 20,)
                          ],
                        )
                      ],
                    ) ,
                  )

              ),

            ),
          ],
        ),
      ]),

    );

  }

}
