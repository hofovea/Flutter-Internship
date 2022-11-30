import 'package:driver_lessons_app/models/lesson/lesson.dart';
import 'package:driver_lessons_app/style/lessons_icons_file.dart';
import 'package:flutter/material.dart';

import '../style/app_color_set.dart';
import 'lesson_detail.dart';

class LessonTile extends StatelessWidget {
  final Lesson lesson;

  const LessonTile({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LessonDetail(lesson: lesson)));
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(border: Border(right: BorderSide(width: 1.0, color: AppColorSet.verticalBorderColor))),
          child: Icon(
            getIconDataByName(lesson.iconName),
            color: AppColorSet.iconColor,
          ),
        ),
        title: Text(
          lesson.content,
          style: const TextStyle(color: AppColorSet.textColor, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: LinearProgressIndicator(
                    backgroundColor: AppColorSet.backgroundColor,
                    value: lesson.levelIndicator,
                    valueColor: AlwaysStoppedAnimation(AppColorSet.progressBarColor))),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(lesson.level, style: const TextStyle(color: AppColorSet.textColor))),
            )
          ],
        ),
        trailing: const Icon(Icons.keyboard_arrow_right, color: AppColorSet.iconColor, size: 30.0));
  }
}
