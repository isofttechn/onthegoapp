import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:onthegoapp/main/screens/SDSplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SDSplashScreen(),
        // theme: !appStore.isDarkModeOn
        //     ? AppThemeData.lightTheme
        //     : AppThemeData.darkTheme,
        builder: scrollBehaviour(),
      ),
    );
  }
}
