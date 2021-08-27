import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onthegoapp/main/utils/ShColors.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
    // required this.size,
    required this.icon,
    required this.title,
    // required this.richText,
    required this.subtitle,
    // required this.onTap,
  }) : super(key: key);

  // final Size size;
  final String icon;
  final String title;
  final String subtitle;
  // final VoidCallback onTap;
  // final String richText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        width: 500,
        height: 150,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        icon != null
                            ? SvgPicture.asset(icon, width: 100, height: 100)
                            : Container(width: 50),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            title,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: t2_colorPrimary,
                            ),
                          ),
                          subtitle: Text(
                            subtitle,
                            style: TextStyle(fontSize: 14, color: sh_black),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
