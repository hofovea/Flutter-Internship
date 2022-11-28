import 'package:driver_lessons_app/models/lesson/lesson.dart';
import 'package:driver_lessons_app/models/lessons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonTile extends StatelessWidget {
  final Lesson lesson;

  const LessonTile({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border:
                  Border(right: BorderSide(width: 1.0, color: Colors.white24))),
          child: const Icon(LessonsIcons.directions_car, color: Colors.white),
        ),
        title: Text(
          lesson.content,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  // tag: 'hero',
                  child: LinearProgressIndicator(
                      backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                      value: lesson.levelIndicator,
                      valueColor: const AlwaysStoppedAnimation(Colors.green)),
                )),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(lesson.level,
                      style: TextStyle(color: Colors.white))),
            )
          ],
        ),
        trailing: const Icon(Icons.keyboard_arrow_right,
            color: Colors.white, size: 30.0));
  }
}
