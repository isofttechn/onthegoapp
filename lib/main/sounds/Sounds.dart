import 'package:flutter/material.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

import '../../main.dart';

class Sounds extends StatefulWidget {
  Sounds({Key? key}) : super(key: key);

  @override
  _SoundsState createState() => _SoundsState();
}

class _SoundsState extends State<Sounds> {
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
                  sound_text_title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
