import 'package:flutter/material.dart';
import 'package:onthegoapp/main/task/taskcartegory/TaskModel.dart';
import 'package:onthegoapp/main/utils/AppWidget.dart';
import 'package:onthegoapp/main/utils/DbColors.dart';

class TaskBody extends StatefulWidget {
  TaskBody({Key? key}) : super(key: key);

  @override
  _TaskBodyState createState() => _TaskBodyState();
}

class _TaskBodyState extends State<TaskBody> {
  late List<TaskCategoryDataModel> mListings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: db5_white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mListings.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return category(mListings[index], index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class category extends StatelessWidget {
  // const category({Key? key}) : super(key: key);
  late TaskCategoryDataModel model;

  category(TaskCategoryDataModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: <Widget>[
          // Container(
          //   decoration: boxDecoration(bgColor: t7light_blue, radius: 16),
          //   child: Padding(
          //     padding: EdgeInsets.all(16.0),
          //     child: SvgPicture.asset(
          //       model.image,
          //       height: 40,
          //       width: 40,
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 4,
          ),
          text(model.name, textColor: t7textColorSecondary)
        ],
      ),
    );
  }
}
