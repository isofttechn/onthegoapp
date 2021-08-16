import 'package:flutter/material.dart';
import 'package:onthegoapp/main/Home/Dashboard.dart';
import 'package:onthegoapp/main/Home/Db5BottomNavigationBar.dart';
import 'package:onthegoapp/main/Home/DbImages.dart';
import 'package:onthegoapp/main/health/Health.dart';
import 'package:onthegoapp/main/meditation/Meditation.dart';
import 'package:onthegoapp/main/sleep/Sleep.dart';
import 'package:onthegoapp/main/sounds/Sounds.dart';

import 'package:onthegoapp/main/utils/DbColors.dart';

class Footer extends StatefulWidget {
  // Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var _selectedIndex = 0;
  final pages = [
    Dashboard(),
    Health(),
    Meditation(),
    Sleep(),
    Sounds(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
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
        child: Db5BottomNavigationBar(
          items: <Db5BottomNavigationBarItem>[
            Db5BottomNavigationBarItem(icon: db5_ic_home),
            Db5BottomNavigationBarItem(icon: db5_ic_heart),
            Db5BottomNavigationBarItem(icon: db5_ic_meditate),
            Db5BottomNavigationBarItem(icon: db5_ic_sleep),
            Db5BottomNavigationBarItem(icon: db5_ic_sounds),
          ],
          currentIndex: _selectedIndex,
          unselectedIconTheme: IconThemeData(color: db5_icon_color, size: 24),
          selectedIconTheme: IconThemeData(color: db5_colorPrimary, size: 24),
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: Db5BottomNavigationBarType.fixed,
        ),
      ),
      body: SafeArea(
        child: pages[_selectedIndex],
      ),
    );
    // );
  }
}
