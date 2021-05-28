import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/home.dart';
import 'package:flutter_crud/screens/login.dart';
import 'package:flutter_crud/screens/register.dart';
import 'package:flutter_crud/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

//FOR CRUD ---------------------------------------- STARTS -------------------------
// const darkBlueColor = Color(0xff486579);
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contact App',
//       theme: ThemeData(
//         primaryColor: darkBlueColor,
//       ),
//       home: MyHomePage(title: 'Contact List'),
//     );
//   }
// }
//FOR CRUD ---------------------------------------- ENDS -------------------------

//FOR SPLASH SCREEN ---------------------------------------- STARTS -------------------------
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//FOR SPLASH SCREEN ---------------------------------------- ENDS -------------------------

// ------------ SPLASH SCREEN -------
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      // () => Navigator.of(context).pushNamed('/welcome'),
      // Navigator.pushNamed('/welcome');

      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Welcome())),

      // context, MaterialPageRoute(builder: (context) => Routes())),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.themeColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Colors.white,
            Colors.themeColor,
          ],
        )),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/Dog_Tag-01.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//ROUTING / NAVIGATION
class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      // initialRoute: '/drawer',
      routes: {
        '/': (_) => Home(),
        '/welcome': (_) => Welcome(),
        '/login': (_) => Login(),
        '/register': (_) => Register(),
        '/drawer': (_) => Drawer(),
        // '/home': (_) => FirstPage(),
        // '/iphone11': (_) => iPhone12ProMax7(),
        // '/trans': (_) => MyStatefulWidget(),
      },
    );
  }
}
