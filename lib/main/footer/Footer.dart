import 'package:flutter/material.dart';
import 'package:onthegoapp/main/Home/Dashboard.dart';
import 'package:onthegoapp/main/Home/Db5BottomNavigationBar.dart';
import 'package:onthegoapp/main/Home/Db5PageController.dart';
import 'package:onthegoapp/main/Home/DbImages.dart';
import 'package:onthegoapp/main/health/Health.dart';
import 'package:onthegoapp/main/meditation/Meditation.dart';
import 'package:onthegoapp/main/sleep/Sleep.dart';
import 'package:onthegoapp/main/sounds/Sounds.dart';

import 'package:onthegoapp/main/utils/DbColors.dart';

class Footer extends StatefulWidget {
  // Footer({Key? key}) : super(key: key);
  late final Db5PageController _pageController;

  Footer({
    Db5PageController? pageController,
  }) {
    _pageController = pageController ?? Db5PageController();
  }

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  // var _selectedIndex = 0;

  List<String> mainScreensTitles = [
    'Dashboard',
    'Health',
    'Meditation',
    'Sleep',
    'Sounds'
  ];

  late final pages = [
    Dashboard(pageController: widget._pageController),
    Health(),
    Meditation(),
    Sleep(),
    Sounds(),
  ];

  @override
  void initState() {
    super.initState();
    // _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: dbShadowColor,
              offset: Offset.fromDirection(3, 1),
              spreadRadius: 1,
              blurRadius: 5)
        ]),
        child: ValueListenableBuilder<int>(
          builder: (_, index, __) {
            return Db5BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: <Db5BottomNavigationBarItem>[
                Db5BottomNavigationBarItem(icon: db5_ic_home),
                Db5BottomNavigationBarItem(icon: db5_ic_heart),
                Db5BottomNavigationBarItem(icon: db5_ic_meditate),
                Db5BottomNavigationBarItem(icon: db5_ic_sleep),
                Db5BottomNavigationBarItem(icon: db5_ic_sounds),
              ],
              currentIndex: index,
              unselectedIconTheme:
                  IconThemeData(color: db5_icon_color, size: 24),
              selectedIconTheme:
                  IconThemeData(color: db5_colorPrimary, size: 24),
              onTap: (int index) {
                widget._pageController.setValue(index);
              },
              type: Db5BottomNavigationBarType.fixed,
            );
          },
          valueListenable: widget._pageController.pageIndex,
          /*child: Db5BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: <Db5BottomNavigationBarItem>[
              Db5BottomNavigationBarItem(icon: db5_ic_home),
              Db5BottomNavigationBarItem(icon: db5_ic_heart),
              Db5BottomNavigationBarItem(icon: db5_ic_meditate),
              Db5BottomNavigationBarItem(icon: db5_ic_sleep),
              Db5BottomNavigationBarItem(icon: db5_ic_sounds),
            ],
            currentIndex: 0,
            unselectedIconTheme: IconThemeData(color: db5_icon_color, size: 24),
            selectedIconTheme: IconThemeData(color: db5_colorPrimary, size: 24),
            onTap: (int index) {
              setState(() {
                // _selectedIndex = index;
                widget._pageController.setValue(index);
              });
            },
            type: Db5BottomNavigationBarType.fixed,
          ),*/
        ),
      ),
      body: SafeArea(
        // child: pages[_selectedIndex],
        child: ValueListenableBuilder<int>(
          valueListenable: widget._pageController.pageIndex,
          builder: (_, index, __) => pages[index],
        ),
      ),
    );
    // );
  }
}
