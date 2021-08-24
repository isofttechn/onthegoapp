import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onthegoapp/main/Home/Db5PageController.dart';
import 'package:onthegoapp/main/Home/DbStrings.dart';
import 'package:onthegoapp/main/footer/Footer.dart';
import 'package:onthegoapp/main/health/Health.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/ShConstant.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';

import '../../main.dart';

class Dashboard extends StatefulWidget {
  late final Size size;
  late final Db5PageController _pageController;

  Dashboard({
    required Db5PageController pageController,
  }) {
    _pageController = pageController;
  }

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  // int selectedPos = 1;
  // late List<T5Bill> mCards;

  // @override
  // void initState() {
  //   super.initState();
  //   selectedPos = 1;
  //   mCards = getListData();
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    // changeStatusColor(appStore.appBarColor!);
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
                padding: EdgeInsets.only(left: 20.0, top: 20),
                child: text(dashboard_text_title,
                    textColor: appStore.textPrimaryColor,
                    fontFamily: fontBold,
                    fontSize: textSizeXLarge),
              ),
              SizedBox(height: 30),

              // Expanded(
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14,
                        right: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("TOD LIST");
                            },
                            child: Container(
                              height: 250,
                              width: 140,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              decoration: boxDecoration(
                                radius: 16,
                                showShadow: true,
                                bgColor: Colors.blueAccent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.task_alt, size: 50,
                                    color: Colors.white,
                                    // size: width / 13, height: width / 13,
                                  ),
                                  SizedBox(height: 10),
                                  text(dashboard_text_todo,
                                      textColor: appStore.textPrimaryColor,
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontSemibold),
                                  text(dashboard_desc_todo,
                                      fontSize: textSizeMedium),
                                  SizedBox(height: 13),
                                ],
                              ),
                              // );
                              // },
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new Health())); */
                              widget._pageController.setValue(1);
                            },
                            child: Container(
                              height: 200,
                              width: 140,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              decoration: boxDecoration(
                                  radius: 16,
                                  showShadow: true,
                                  bgColor: Colors.redAccent),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.health_and_safety_sharp,
                                    color: Colors.white, size: 50,
                                    // size: width / 13, height: width / 13,
                                  ),
                                  SizedBox(height: 10),
                                  text(dashbord_text_health,
                                      textColor: appStore.textPrimaryColor,
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontSemibold),
                                  text(dashboard_desc_health,
                                      fontSize: textSizeMedium),
                                  SizedBox(height: 13),
                                ],
                              ),
                              // );
                              // },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14,
                        right: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: 140,
                            padding: EdgeInsets.only(
                              left: 14,
                              right: 13,
                            ),
                            decoration: boxDecoration(
                              radius: 16,
                              showShadow: true,
                              bgColor: Colors.yellowAccent,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.face, size: 50, color: Colors.white,
                                  // size: width / 13, height: width / 13,
                                ),
                                SizedBox(height: 10),
                                text(dashboard_text_fun,
                                    textColor: appStore.textPrimaryColor,
                                    fontSize: textSizeLargeMedium,
                                    fontFamily: fontSemibold),
                                text(dashboard_desc_fun,
                                    fontSize: textSizeMedium),
                                SizedBox(height: 13),
                              ],
                            ),
                            // );
                            // },
                          ),
                          Container(
                            height: 250,
                            width: 140,
                            padding: EdgeInsets.only(
                              left: 14,
                              right: 13,
                            ),
                            decoration: boxDecoration(
                                radius: 16,
                                showShadow: true,
                                bgColor: Colors.greenAccent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.help, size: 50, color: Colors.white,
                                  // size: width / 13, height: width / 13,
                                ),
                                SizedBox(height: 10),
                                text(dashboard_text_goal,
                                    textColor: appStore.textPrimaryColor,
                                    fontSize: textSizeLargeMedium,
                                    fontFamily: fontSemibold),
                                text(dashboard_desc_goal,
                                    fontSize: textSizeMedium),
                                SizedBox(height: 13),
                              ],
                            ),
                            // );
                            // },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13),
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
