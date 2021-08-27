import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:onthegoapp/main/Home/DbImages.dart';
import 'package:onthegoapp/main/sleep/SleepDataGenerator.dart';
import 'package:onthegoapp/main/sleep/SleepModel.dart';
import 'package:onthegoapp/main/utils/AppCard.dart';
import 'package:onthegoapp/main/utils/DbColors.dart';
import 'package:onthegoapp/main/utils/SDColors.dart';

class Sleep extends StatefulWidget {
  Sleep({Key? key}) : super(key: key);

  @override
  _SleepState createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  List<MusicModel> podCastDetailList = getPodCastDetailList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: db5_white,
      body: Container(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppCard(
                icon: d5_sleep,
                title: "Sleep",
                subtitle: 'Every human being on Earth needs sleep',
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Songs and music for sleep",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: mpAppTextColor)),
                    Text("Viel All",
                            style: secondaryTextStyle(color: mpAppButtonColor))
                        .onTap(() {}),
                  ],
                ).paddingOnly(left: 16, right: 16),
              ),
              ListView.separated(
                itemCount: podCastDetailList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(color: Colors.white.withOpacity(0.1), indent: 40),
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  MusicModel data = podCastDetailList[index];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      8.height,
                      Row(
                        children: [
                          Icon(Icons.play_circle_outline,
                              color: mpAppTextColor),
                          16.width,
                          Text(data.title!,
                                  style: boldTextStyle(
                                      color: mpAppTextColor, size: 14))
                              .expand(),
                          Text(data.number1.toString(),
                              style: secondaryTextStyle(
                                  color: mpAppTextColor, size: 12)),
                          24.width,
                          Icon(Icons.more_horiz,
                              color: mpAppTextColor.withOpacity(0.9)),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
