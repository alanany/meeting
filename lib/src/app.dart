import 'package:flutter/material.dart';
import 'package:meeting/src/widgets/shimmers/ad_shimmer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meeting/src/providers/Auth_provider.dart';
import 'package:meeting/src/providers/count.dart';
import 'package:meeting/src/screens/Auth/aut_screen.dart';
import 'package:meeting/src/screens/tabs/home.dart';
import 'package:provider/provider.dart';
import 'package:meeting/src/screens/language/english.dart';
import 'package:meeting/src/screens/splashscreen.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
import 'package:meeting/src/screens/language/arabic.dart';
import 'package:meeting/src/providers/count.dart';
import 'package:meeting/src/screens/intro_screen/first_intro.dart';
import 'package:meeting/src/screens/tabs/navigation_tabs.dart';
import 'package:meeting/src/screens/Auth/third.dart';
import 'package:meeting/src/screens/Auth/login.dart';
import 'package:meeting/src/screens/Auth/signup.dart';
import 'package:meeting/src/screens/Auth/complete.dart';
import 'package:meeting/src/screens/Auth/NewSignup.dart';
import 'package:meeting/src/screens/Auth/testlogin.dart';
import 'package:meeting/src/providers/auth.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/imgs/logo.png'), context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Au(),
        ),
      ],
        child: MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale('en')],
          locale: Locale('en'),
          title: 'MEETING',
               theme: Theme.of(context).copyWith(
            accentIconTheme: Theme.of(context).accentIconTheme.copyWith(
                color: Colors.black
            ),
            accentColor: Colors.amber,
            primaryColor: Colors.amber,
            primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
                color: Colors.black
            ),
            primaryTextTheme: Theme
                .of(context)
                .primaryTextTheme
                .apply(bodyColor: Colors.white)),


          home: Splash(),
          routes: <String , WidgetBuilder>{
            '/Arabic': (BuildContext  context) => new Arabic(),
            '/Intro': (BuildContext  context) => new Intro(),
            '/Signup': (BuildContext  context) => new Signup(),
            '/Login': (BuildContext  context) => new Login(),
            '/Home': (BuildContext  context) => new Home(),
            '/NavigationtPage': (BuildContext  context) => new NavigationtPage(),

          },
          debugShowCheckedModeBanner: false,

        ));
  }
}
