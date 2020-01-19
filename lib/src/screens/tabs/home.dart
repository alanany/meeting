import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meeting/src/providers/auth.dart';
import 'package:provider/provider.dart';
class Home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<Home> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(0, 0, 0, 0.06),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title:Text( 'Home',style: TextStyle(fontSize: 20,color: Colors.black),) ,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 18),
            child:Image(image:AssetImage('assets/imgs/Icond.png'),width: 24,height: 24,)
    ,
          )
        ],
      ),
      body: new ListView(children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
              child:Container(

                  color: Colors.white,
                  height:217,width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image1.png',
                              width: 100.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image2.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,

                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image3.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 22),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(padding:
                              EdgeInsets.only(left: 5,right: 8),),
                            Text('Royal Hall',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 180,
                            ),
                            Image(width: 15,height: 14,
                              image: AssetImage('assets/imgs/like.png'),
                            ),
                           SizedBox(width:1,),
                            Padding(
                              padding:EdgeInsets.only(right: 30) ,
                              child:Text('4,5 / 5',style: TextStyle(fontSize: 12)) ,
                            )
                          ],
                        ) ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.only(left: 20,top: 3),
                            child:Text('23th ,king Abduallh road',style: TextStyle(fontSize: 12)) ,
                          )
                        ],
                      ),SizedBox(height:15 ,),
                       Center(
                       child:Container(

                         width: 280.2,
                         height:2 ,
                         decoration: BoxDecoration(
                           border: Border(
                               bottom: BorderSide(color:Color.fromRGBO(0, 0, 0, 0.06),width: 2.0),
                           ),
                         ),
                       ) ,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 22),
                                  ),
                                  Text('2000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('sar',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 22),
                                child: Text('Booking price',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('250',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('chair',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text('Number of chairs',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Icon(
                                    Icons.favorite_border,
                                    color:Colors.orangeAccent ,
                                    size: 23.0,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 22),
                                    child: Text('40 Likes',style: TextStyle(fontSize: 12,color: Colors.orangeAccent))
                ,
                                  ),

                                ],
                              ),
                            ],
                          )




                        ],
                      )
                    ],
                  )
              ) ,
            ),
            Padding(
              padding:EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
              child:Container(

                  color: Colors.white,
                  height:217,width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image1.png',
                              width: 100.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image2.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,

                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image3.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 22),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(padding:
                            EdgeInsets.only(left: 5,right: 8),),
                            Text('Royal Hall',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 180,
                            ),
                            Image(width: 15,height: 14,
                              image: AssetImage('assets/imgs/like.png'),
                            ),
                            SizedBox(width:1,),
                            Padding(
                              padding:EdgeInsets.only(right: 30) ,
                              child:Text('4,5 / 5',style: TextStyle(fontSize: 12)) ,
                            )
                          ],
                        ) ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.only(left: 20,top: 3),
                            child:Text('23th ,king Abduallh road',style: TextStyle(fontSize: 12)) ,
                          )
                        ],
                      ),SizedBox(height:15 ,),
                      Center(
                        child:Container(

                          width: 280.2,
                          height:2 ,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color.fromRGBO(0, 0, 0, 0.06),width: 2.0),
                            ),
                          ),
                        ) ,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 22),
                                  ),
                                  Text('2000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('sar',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 22),
                                child: Text('Booking price',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('250',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('chair',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text('Number of chairs',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Icon(
                                    Icons.favorite_border,
                                    color:Colors.orangeAccent ,
                                    size: 23.0,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 22),
                                    child: Text('40 Likes',style: TextStyle(fontSize: 12,color: Colors.orangeAccent))
                                    ,
                                  ),

                                ],
                              ),
                            ],
                          )




                        ],
                      )
                    ],
                  )
              ) ,
            ),
            Padding(
              padding:EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
              child:Container(

                  color: Colors.white,
                  height:217,width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image1.png',
                              width: 100.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image2.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,

                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image3.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 22),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(padding:
                            EdgeInsets.only(left: 5,right: 8),),
                            Text('Royal Hall',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 180,
                            ),
                            Image(width: 15,height: 14,
                              image: AssetImage('assets/imgs/like.png'),
                            ),
                            SizedBox(width:1,),
                            Padding(
                              padding:EdgeInsets.only(right: 30) ,
                              child:Text('4,5 / 5',style: TextStyle(fontSize: 12)) ,
                            )
                          ],
                        ) ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.only(left: 20,top: 3),
                            child:Text('23th ,king Abduallh road',style: TextStyle(fontSize: 12)) ,
                          )
                        ],
                      ),SizedBox(height:15 ,),
                      Center(
                        child:Container(

                          width: 280.2,
                          height:2 ,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color.fromRGBO(0, 0, 0, 0.06),width: 2.0),
                            ),
                          ),
                        ) ,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 22),
                                  ),
                                  Text('2000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('sar',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 22),
                                child: Text('Booking price',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('250',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('chair',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text('Number of chairs',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Icon(
                                    Icons.favorite_border,
                                    color:Colors.orangeAccent ,
                                    size: 23.0,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 22),
                                    child: Text('40 Likes',style: TextStyle(fontSize: 12,color: Colors.orangeAccent))
                                    ,
                                  ),

                                ],
                              ),
                            ],
                          )




                        ],
                      )
                    ],
                  )
              ) ,
            ),
            Padding(
              padding:EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 3),
              child:Container(

                  color: Colors.white,
                  height:217,width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image1.png',
                              width: 100.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image2.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,

                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/imgs/image3.png',
                              width: 110.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                            flex: 1,
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 22),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(padding:
                            EdgeInsets.only(left: 5,right: 8),),
                            Text('Royal Hall',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 180,
                            ),
                            Image(width: 15,height: 14,
                              image: AssetImage('assets/imgs/like.png'),
                            ),
                            SizedBox(width:1,),
                            Padding(
                              padding:EdgeInsets.only(right: 30) ,
                              child:Text('4,5 / 5',style: TextStyle(fontSize: 12)) ,
                            )
                          ],
                        ) ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.only(left: 20,top: 3),
                            child:Text('23th ,king Abduallh road',style: TextStyle(fontSize: 12)) ,
                          )
                        ],
                      ),SizedBox(height:15 ,),
                      Center(
                        child:Container(

                          width: 280.2,
                          height:2 ,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color.fromRGBO(0, 0, 0, 0.06),width: 2.0),
                            ),
                          ),
                        ) ,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 22),
                                  ),
                                  Text('2000',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('sar',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 22),
                                child: Text('Booking price',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text('250',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text('chair',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text('Number of chairs',style: TextStyle(fontSize: 10,color: Colors.grey))
                                ,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Icon(
                                    Icons.favorite_border,
                                    color:Colors.orangeAccent ,
                                    size: 23.0,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 22),
                                    child: Text('40 Likes',style: TextStyle(fontSize: 12,color: Colors.orangeAccent))
                                    ,
                                  ),

                                ],
                              ),
                            ],
                          )




                        ],
                      )
                    ],
                  )
              ) ,
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
