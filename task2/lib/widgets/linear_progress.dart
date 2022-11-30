import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/lesson/lesson.dart';
import '../style/app_color_set.dart';

class LinearProgress extends StatelessWidget {
  const LinearProgress({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        backgroundColor: AppColorSet.backgroundColor,
        value: lesson.levelIndicator,
        valueColor: AlwaysStoppedAnimation(AppColorSet.progressBarColor));
  }
}