import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onthegoapp/main/Home/Dashboard.dart';
import 'package:onthegoapp/main/Home/Db5PageController.dart';
import 'package:onthegoapp/main/footer/Footer.dart';
import 'package:onthegoapp/main/models/ShCategory.dart';
import 'package:onthegoapp/main/screens/ShImages.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/DbColors.dart';
import 'package:onthegoapp/main/utils/ShColors.dart';
import 'package:onthegoapp/main/utils/ShConstant.dart';
import 'package:onthegoapp/main/utils/ShStrings.dart';
// import 'package:onthegoapp/main/Home/Db5PageController.dart';

class Home extends StatefulWidget {
  // Home({Key? key}) : super(key: key);
  // late final Db5PageController _pageController;

  // Home({
  //   required Db5PageController pageController,
  // }) {
  //   _pageController = pageController;
  // }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ShCategory> list = [];
  var selectedTab = 0;
  late final Db5PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = Db5PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = MediaQuery.of(context).size.width;
    var title = "Home";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: db5_white,
        iconTheme: IconThemeData(color: sh_textColorPrimary),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        title: text(
          title,
          textColor: sh_colorPrimary,
          fontFamily: fontBold,
          fontSize: textSizeNormal,
        ),
      ),
      body: Footer(pageController: _pageController),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          elevation: 8,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: sh_white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 60, right: spacing_large),
                          child: Column(
                            children: <Widget>[
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: spacing_standard,
                                margin: EdgeInsets.all(spacing_control),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(ic_user),
                                    radius: 55,
                                  ),
                                ),
                              ),
                              SizedBox(height: spacing_middle),
                              text(
                                "Abraham William",
                                textColor: sh_textColorPrimary,
                                fontFamily: fontBold,
                                fontSize: textSizeNormal,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: spacing_standard_new, top: 30),
                          child: Icon(Icons.clear),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    color: sh_editText_background,
                    padding: EdgeInsets.fromLTRB(
                        0, spacing_standard, 0, spacing_standard),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                // text("80",
                                //     textColor: sh_colorPrimary,
                                //     fontFamily: fontMedium),
                                // SizedBox(height: spacing_control),
                                // text("My Favorite",
                                //     textColor: sh_colorPrimary,
                                //     fontFamily: fontMedium),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              children: <Widget>[
                                // text("07",
                                //     textColor: sh_colorPrimary,
                                //     fontFamily: fontMedium),
                                SizedBox(height: spacing_control),
                                // text("Wishlist",
                                //     textColor: sh_textColorPrimary,
                                //     fontFamily: fontMedium),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  getDrawerItem(ic_dashboard, sh_lbl_dashboard, callback: () {
                    // Dashboard(pageController: pageController).launch(context);
                    _pageController.goTo(Db5Page.Dashboard);
                  }),
                  getDrawerItem(ic_completed_task, sh_lbl_task, callback: () {
                    // TaskBody().launch(context);
                    // widget._pageController.setValue(5);
                    _pageController.goTo(Db5Page.Tasks);
                  }),
                  getDrawerItem(ic_category, sh_lbl_category, callback: () {
                    // ShContactUsScreen().launch(context);
                  }),
                  getDrawerItem(ic_category, sh_lbl_health_meditate,
                      callback: () {
                    // ShContactUsScreen().launch(context);
                  }),
                  getDrawerItem(ic_category, sh_lbl_Route, callback: () {
                    // ShContactUsScreen().launch(context);
                  }),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: list.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return getDrawerItem(
                        list[index].image,
                        list[index].name,
                        callback: () {
                          // ShSubCategory(category: list[index]).launch(context);
                        },
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  Divider(color: sh_view_color, height: 1),
                  SizedBox(height: 20),
                  getDrawerItem(
                    sh_user_placeholder,
                    sh_lbl_account,
                    callback: () {
                      // ShAccountScreen().launch(context);
                    },
                  ),
                  getDrawerItem(sh_settings, sh_lbl_settings, callback: () {
                    // ShSettingsScreen().launch(context);
                  }),
                  SizedBox(height: 20),
                  getDrawerItem(sh_faqs, sh_lbl_faq, callback: () {
                    // ShFAQScreen().launch(context);
                  }),
                  getDrawerItem(sh_identification, sh_lbl_contact_us,
                      callback: () {
                    // ShContactUsScreen().launch(context);
                  }),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: sh_colorPrimary.withOpacity(0.2)),
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: <Widget>[
                        Image.asset(ic_app_icon, width: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            text("OnThe",
                                textColor: sh_textColorPrimary,
                                fontSize: textSizeMedium,
                                fontFamily: fontBold),
                            text("GO",
                                textColor: sh_colorPremium,
                                fontSize: textSizeMedium,
                                fontFamily: fontBold),
                          ],
                        ),
                        text("v 1.0",
                            textColor: sh_textColorPrimary,
                            fontSize: textSizeSmall)
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //GET DRAWER ITEM
  Widget getDrawerItem(String? icon, String? name, {VoidCallback? callback}) {
    return Builder(
      builder: ($context) => InkWell(
        onTap: () {
          if (callback != null) callback();

          ScaffoldState $scaffold = Scaffold.of($context);
          if ($scaffold.hasDrawer && $scaffold.isDrawerOpen) {
            Navigator.of(context).pop();
          }
        },
        child: Container(
          color: sh_white,
          padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
          child: Row(
            children: <Widget>[
              icon != null
                  ? Image.asset(icon, width: 20, height: 20)
                  : Container(width: 20),
              SizedBox(width: 20),
              text(name,
                  textColor: sh_textColorPrimary,
                  fontSize: textSizeMedium,
                  fontFamily: fontMedium)
            ],
          ),
        ),
      ),
    );
  }

  Widget tabItem(var pos, var icon) {
    return GestureDetector(
      onTap: () {
        selectedTab = pos;
        setState(() {});
      },
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: selectedTab == pos
            ? BoxDecoration(
                shape: BoxShape.circle, color: sh_colorPrimary.withOpacity(0.2))
            : BoxDecoration(),
        child: SvgPicture.asset(icon,
            width: 24,
            height: 24,
            color:
                selectedTab == pos ? sh_colorPrimary : sh_textColorSecondary),
      ),
    );
  }
}
