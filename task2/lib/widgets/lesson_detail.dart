import 'package:driver_lessons_app/style/app_color_set.dart';
import 'package:driver_lessons_app/style/lessons_icons_file.dart';
import 'package:flutter/material.dart';

import '../models/lesson/lesson.dart';

class LessonDetail extends StatelessWidget {
  final Lesson lesson;

  const LessonDetail({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelIndicator = LinearProgressIndicator(
        backgroundColor: AppColorSet.backgroundColor,
        value: lesson.levelIndicator,
        valueColor: AlwaysStoppedAnimation(AppColorSet.progressBarColor));

    final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0)),
      child: Text(
        "\$${lesson.price}",
        style: const TextStyle(color: AppColorSet.textColor),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 120.0),
        Icon(
          getIconDataByName(lesson.iconName),
          color: Colors.white,
          size: 40.0,
        ),
        const SizedBox(
          width: 90.0,
          child: Divider(color: Colors.green),
        ),
        const SizedBox(height: 10.0),
        Text(
          lesson.title,
          style: const TextStyle(color: AppColorSet.textColor, fontSize: 45.0),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: levelIndicator),
            Expanded(
                flex: 6,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      lesson.level,
                      style: const TextStyle(color: AppColorSet.textColor),
                    ))),
            Expanded(flex: 2, child: Center(child: coursePrice))
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration:
                const BoxDecoration(color: AppColorSet.backgroundColor)),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: AppColorSet.takeLessonButtonColor),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      lesson.content,
      style: const TextStyle(fontSize: 18.0),
    );
    final readButton = Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColorSet.backgroundColor),
          child: const Text("TAKE THIS LESSON",
              style: TextStyle(color: AppColorSet.textColor)),
        ));
    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[bottomContentText, readButton],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
