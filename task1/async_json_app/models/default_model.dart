import 'json_writable.dart';
import 'story.dart';
import 'user.dart';

abstract class DefaultModel with JsonConvertable {
  Map<String, dynamic> toJson();
  const DefaultModel();
  factory DefaultModel.fromJson(Map<String, dynamic> jsonMap) {
    switch (jsonMap['type']) {
      case 'User':
        return User.fromMap(jsonMap['data']);
      case 'Story':
        return Story.fromMap(jsonMap['data']);
      default:
        throw Exception('No such type ${jsonMap['type']}');
    }
  }
}
