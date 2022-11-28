import 'user.dart';
import 'base_model.dart';

class Story extends BaseModel {
  final int _id;
  final String _title;
  final User _author;
  final String _story_text;
  Story(this._id, this._title, this._author, this._story_text);

  @override
  Map<String, dynamic> toJson() => {
        'id': _id,
        'title': _title,
        'author': _author.toJson(),
        'story_text': _story_text
      };

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(map['id'], map['title'], User.fromMap(map['author']),
        map['story_text']);
  }

  @override
  String toString() {
    return 'Story: $_id, $_author, $_title, $_story_text\n';
  }
}
