import 'package:flutter/material.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

import '../../main.dart';

class Meditation extends StatefulWidget {
  Meditation({Key? key}) : super(key: key);

  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appStore.scaffoldBackground,
      body: Container(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(),
                child: text(
                  meditation_text_title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
