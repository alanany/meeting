import 'package:flutter/cupertino.dart';
import 'package:meeting/src/screens/tabs/chat.dart';
import 'package:meeting/src/screens/tabs/favorite.dart';
import 'package:meeting/src/screens/tabs/home.dart';
import 'package:meeting/src/screens/tabs/more.dart';
import 'package:meeting/src/screens/tabs/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NavigationtPage extends StatefulWidget {
  @override
  _FirstPage createState() => _FirstPage();
}
class _FirstPage extends State<NavigationtPage> {
  // Properties & Variables needed
  int currentTab = 1; // to keep track of active tab index
  final List<Widget> screens = [
    Home(),
    Profile(),
    Chat(),
    More(),
    Favorite(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home(); // Our first view in viewport
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar:BottomAppBar(
        child: Container(
          width: double.infinity,
          height: 66,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth:17 ,
                    // color: currentTab == 1 ?   Colors.white: Color.fromRGBO(0, 174, 239, 0.25),
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Home(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 1 ?   Colors.orangeAccent : Colors.black,
                          size: 20.0,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTab == 1 ?   Colors.orangeAccent : Colors.white,
                              fontSize: 14,
                              fontFamily: 'Almarai',fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth:17 ,
                    // color: currentTab == 0 ?  Colors.white : Color.fromRGBO(0, 174, 239, 0.25) ,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Favorite(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: currentTab == 0 ?   Colors.orangeAccent : Colors.black,
                          size: 20.0,
                        ),
                        Text(
                          'Favorite',
                          style: TextStyle(
                              color: currentTab == 0 ?   Colors.orangeAccent : Colors.white,
                              fontSize: 14,
                              fontFamily: 'Almarai',fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth:17 ,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Chat(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.message,
                          color: currentTab == 2 ?   Colors.orangeAccent : Colors.black,
                          size: 20.0,
                        ),                        Text(
                          'Chat',
                          style: TextStyle(
                              color: currentTab == 2 ?   Colors.orangeAccent : Colors.white,
                              fontSize: 14,
                              fontFamily: 'Almarai',fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),

                  ),
                  MaterialButton(
                    minWidth:17 ,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ?   Colors.orangeAccent : Colors.black,
                          size: 20.0,
                        ),                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3 ?   Colors.orangeAccent : Colors.white,
                              fontSize: 14,
                              fontFamily: 'Almarai',fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 17,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            More(); // if user taps on this dashboard tab will be active
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.more_vert,
                          color: currentTab == 4 ?   Colors.orangeAccent : Colors.grey,
                          size: 20.0,
                        ),                        Text(
                          'More',
                          style: TextStyle(
                              color: currentTab == 4 ? Colors.orangeAccent : Colors.white ,
                              fontSize: 14,
                              fontFamily: 'Almarai',fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

            ],
          ),
        ),
      ),

    );
  }
}
