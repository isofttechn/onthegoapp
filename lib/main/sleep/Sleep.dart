import 'package:flutter/material.dart';
import 'package:onthegoapp/main.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

class Sleep extends StatefulWidget {
  Sleep({Key? key}) : super(key: key);

  @override
  _SleepState createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
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
                  sleep_text_title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
