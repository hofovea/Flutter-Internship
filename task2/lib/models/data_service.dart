import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';

import 'lesson/lesson.dart';

class DataService {
  static const _fileName = 'lessons.json';
  static const _maxDuration = 3;

  static List<Lesson> _generateLessons() => [
        const Lesson(
            title: "Basic driving",
            level: "Beginner",
            levelIndicator: 0.33,
            price: 20,
            content: "Some lesson content",
            iconName: "directions_car"),
        const Lesson(
            title: "Intermediate driving",
            level: "Intermediate",
            levelIndicator: 0.66,
            price: 50,
            content: "Some intermediate lesson content",
            iconName: "steering_wheel"),
        const Lesson(
            title: "Advanced driving",
            level: "Advanced",
            levelIndicator: 1,
            price: 100,
            content: "Some advanced lesson content",
            iconName: "repair")
      ];

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$_fileName');
  }

  static Future<File> writeLessons() async {
    final file = await _localFile;
    return file.writeAsString(jsonEncode({'data': _generateLessons()}));
  }

  static Future<String> getLessonsJson() async {
    return Future.delayed(Duration(seconds: Random().nextInt(_maxDuration)), () {
      return jsonEncode({'data': _generateLessons()});
    });
  }

  static Future<List<Lesson>> readLessons() async {
    try {
      final lessonsList =
          LessonList.fromJson(jsonDecode(await getLessonsJson()));
      return Future.delayed(
          Duration(seconds: Random().nextInt(_maxDuration)), () => lessonsList.data);
    } catch (e) {
      print(e.toString());
      return Future.error(Exception('Cannot read from file'));
    }
  }
}
