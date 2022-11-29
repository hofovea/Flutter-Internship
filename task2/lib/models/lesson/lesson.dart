import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';

part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson(
      {required String title,
      required String level,
      required double levelIndicator,
      required int price,
      required String content,
      required String iconName}) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}

@freezed
class LessonList with _$LessonList {
  factory LessonList(List<Lesson> data) = _LessonList;

  factory LessonList.fromJson(Map<String, dynamic> json) =>
      _$LessonListFromJson(json);
}
