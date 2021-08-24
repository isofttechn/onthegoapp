import 'package:flutter/material.dart';
import 'package:onthegoapp/main/utils/AppConstant.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShColors.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

class HealthCat extends StatefulWidget {
  HealthCat({Key? key}) : super(key: key);

  @override
  _HealthCatState createState() => _HealthCatState();
}

class _HealthCatState extends State<HealthCat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 14,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Reduce Fear Coming Soon");
                    },
                    child: Container(
                      height: 160,
                      width: 140,
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      decoration: boxDecoration(
                        radius: 16,
                        showShadow: true,
                        bgColor: sh_breath_1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          text(health_title_1,
                              textColor: sh_breath_title_1,
                              fontSize: textSizeLargeMedium,
                              fontFamily: fontBold),
                          text(health_desc_1,
                              textColor: sh_breath_title_1,
                              fontSize: textSizeSmall),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 160,
                      width: 140,
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      decoration: boxDecoration(
                        radius: 16,
                        showShadow: true,
                        bgColor: sh_breath_2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          text(health_title_2,
                              textColor: sh_breath_title_1,
                              fontSize: textSizeLargeMedium,
                              fontFamily: fontBold),
                          text(health_desc_2,
                              textColor: sh_breath_title_1,
                              fontSize: textSizeSmall),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            //SECTION2
            Padding(
              padding: EdgeInsets.only(
                left: 14,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 160,
                    width: 140,
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    decoration: boxDecoration(
                      radius: 16,
                      showShadow: true,
                      bgColor: sh_breath_3,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        text(health_title_3,
                            textColor: sh_breath_title_1,
                            fontSize: textSizeLargeMedium,
                            fontFamily: fontBold),
                        text(health_desc_3,
                            textColor: sh_breath_title_1,
                            fontSize: textSizeSmall),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 140,
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    decoration: boxDecoration(
                      radius: 16,
                      showShadow: true,
                      bgColor: sh_breath_4,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        text(health_title_4,
                            textColor: sh_breath_title_1,
                            fontSize: textSizeLargeMedium,
                            fontFamily: fontBold),
                        text(health_desc_4,
                            textColor: sh_breath_title_1,
                            fontSize: textSizeSmall),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
