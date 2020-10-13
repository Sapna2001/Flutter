import 'package:flutter/material.dart';
import 'package:rolling_Dice/homeScreen.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
//      home: AnimatedSplashScreen(
//        splash: 'assets/images/splash.png',
//        nextScreen: HomeScreen(),
//        splashTransition: SplashTransition.rotationTransition,
//        pageTransitionType: PageTransitionType.scale,
//      )
       home: HomeScreen(),
    );
  }
}
