import 'package:flutter/material.dart';
import 'package:onthegoapp/main/Home/DbImages.dart';
import 'package:onthegoapp/main/health/HealthCat.dart';
import 'package:onthegoapp/main/utils/AppCard.dart';
import 'package:onthegoapp/main/utils/DbColors.dart';

class Health extends StatefulWidget {
  Health({Key? key}) : super(key: key);

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: db5_white,

      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: db5_white,
      //   // centerTitle: true,
      //   // title: Row(
      //   //   mainAxisAlignment: MainAxisAlignment.center,
      //   //   children: <Widget>[
      //   //     Text(
      //   //       'Health',
      //   //       textAlign: TextAlign.left,
      //   //       style: TextStyle(
      //   //         fontWeight: FontWeight.bold,
      //   //         color: db5_black,
      //   //         fontSize: 20,
      //   //       ),
      //   //     ),
      //   //   ],
      //   // ),
      // ),
      body: Container(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppCard(
                icon: d5_breath,
                title: "Breath",
                subtitle: 'Use cool emotional songs to match your feelings',
              ),
              SizedBox(height: 20),
              HealthCat(),
            ],
          ),
        ),
      ),
    );
  }
}
