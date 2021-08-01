import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

// import 'SDWalkThroughScreen.dart';
import 'package:onthegoapp/main/screens/SDWalkThroughScreen.dart';

class SDSplashScreen extends StatefulWidget {
  static String tag = '/SDSplashScreen';

  @override
  _SDSplashScreenState createState() => _SDSplashScreenState();
}

class _SDSplashScreenState extends State<SDSplashScreen>
    with SingleTickerProviderStateMixin {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationPage() {
    finish(context);
    SDWalkThroughScreen().launch(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF076ACF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset('images/img-icons/icon1.png', height: 105),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                "OnTheGo",
                style: secondaryTextStyle(size: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
