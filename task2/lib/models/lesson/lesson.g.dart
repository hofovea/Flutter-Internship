// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map<String, dynamic> json) => _$_Lesson(
      title: json['title'] as String,
      level: json['level'] as String,
      levelIndicator: (json['levelIndicator'] as num).toDouble(),
      price: json['price'] as int,
      content: json['content'] as String,
      iconName: json['iconName'] as String,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'title': instance.title,
      'level': instance.level,
      'levelIndicator': instance.levelIndicator,
      'price': instance.price,
      'content': instance.content,
      'iconName': instance.iconName,
    };
