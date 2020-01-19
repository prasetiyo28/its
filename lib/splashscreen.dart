import 'package:flutter/material.dart';
import 'dart:async';

import 'package:its/onboarding.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  //   void initState(){
  //     super.initState();
  //     startSplashScreen();
  //   }

  //   @override
  //   startSplashScreen() async{
  //       var duration = const Duration(seconds: 5);
  //       return Timer(duration,(){
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (_){
  //             return OnBoarding();
  //           }
  //         ));
  //       });
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                Image.asset("assets/icon.png", width: 150,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}