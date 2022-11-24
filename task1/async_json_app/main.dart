import 'dart:convert';
import 'dart:io';

import 'models/default_model.dart';
import 'models/story.dart';
import 'models/user.dart';

Future<DefaultModel> readFromJsonFile({required String filename}) async {
  String jsonStr = await File(filename).readAsString(encoding: utf8);
  return DefaultModel.fromJson(jsonDecode(jsonStr));
}

void main(List<String> args) async {
  User user = await readFromJsonFile(filename: './data/response1.json') as User;
  print(user);
  Story story =
      await readFromJsonFile(filename: './data/response2.json') as Story;
  print(story);

  print(await user.writeJson(filename: './data/user1.json'));
  print(await story.writeJson(filename: './data/story1.json'));
}
