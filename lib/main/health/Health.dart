import 'package:flutter/material.dart';
import 'package:onthegoapp/main.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

class Health extends StatefulWidget {
  Health({Key? key}) : super(key: key);

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
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
                  health_text_title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
