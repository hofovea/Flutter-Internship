import 'package:driver_lessons_app/models/lesson/lesson.dart';
import 'package:driver_lessons_app/models/lessons_icons.dart';
import 'package:flutter/material.dart';

import 'lesson_detail.dart';

class _LessonTileColorSet {
  static const backgroundColor = Color.fromRGBO(209, 224, 224, 0.2);
  static const textColor = Colors.white;
  static const iconColor = Colors.white;
  static final progressBarColor = Colors.amber[800];
  static const verticalBorderColor = Colors.white24;
}

class LessonTile extends StatelessWidget {
  final Lesson lesson;

  const LessonTile({Key? key, required this.lesson}) : super(key: key);

  Icon getIconFromName(String name) {
    switch (name) {
      case 'directions_car':
        {
          return const Icon(LessonsIcons.directions_car,
              color: _LessonTileColorSet.iconColor);
        }
      case 'steering_wheel':
        {
          return const Icon(LessonsIcons.steering_wheel,
              color: _LessonTileColorSet.iconColor);
        }
      case 'repair':
        {
          return const Icon(LessonsIcons.repair,
              color: _LessonTileColorSet.iconColor);
        }
      default:
        {
          throw Exception('No such icon with name $name');
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LessonDetail(lesson: lesson)));
        },
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(
                      width: 1.0,
                      color: _LessonTileColorSet.verticalBorderColor))),
          child: getIconFromName(lesson.iconName),
        ),
        title: Text(
          lesson.content,
          style: const TextStyle(
              color: _LessonTileColorSet.textColor,
              fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: LinearProgressIndicator(
                    backgroundColor: _LessonTileColorSet.backgroundColor,
                    value: lesson.levelIndicator,
                    valueColor: AlwaysStoppedAnimation(
                        _LessonTileColorSet.progressBarColor))),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(lesson.level,
                      style: const TextStyle(
                          color: _LessonTileColorSet.textColor))),
            )
          ],
        ),
        trailing: const Icon(Icons.keyboard_arrow_right,
            color: _LessonTileColorSet.iconColor, size: 30.0));
  }
}
