import 'base_model.dart';

class User extends BaseModel {
  final int _id;
  final String _username;
  final String _about;
  const User(this._id, this._username, this._about);
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        map['id'] as int, map['username'] as String, map['about'] as String);
  }

  @override
  Map<String, dynamic> toJson() =>
      {'id': _id, 'username': _username, 'about': _about};

  @override
  String toString() {
    return 'User: $_id, $_username, $_about\n';
  }
}
