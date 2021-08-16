import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShConstant.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

import '../../main.dart';

class DashboardCard extends StatefulWidget {
  const DashboardCard(
      {Key? key,
      required this.size,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.onTap})
      : super(key: key);

  final Size size;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  DashboardCardState createState() => DashboardCardState();
}

class DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 300,
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: boxDecoration(
            radius: 16, showShadow: true, bgColor: appStore.scaffoldBackground),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.task, size: 30,
              // size: width / 13, height: width / 13,
            ),
            SizedBox(height: 10),
            text("TODO",
                textColor: appStore.textPrimaryColor,
                fontSize: textSizeLargeMedium,
                fontFamily: fontSemibold),
            text("Plan an event ahead", fontSize: textSizeMedium),
            SizedBox(height: 13),
          ],
        ),
      ),
    );
  }
}
