import 'dart:convert';
import 'dart:io';
import 'dart:math';
import './dinner/dinner.dart';

class DataGenerator {
  static const int maxGuestAmount = 20;
  static const int minGuestAmount = 1;
  static const String _defaultFilename = './data/generatedGuests.json';
  static JsonEncoder jsonEncoder = JsonEncoder.withIndent("  ");

  static List<String> getInvitationList() {
    List<String> invitations = [];
    for (var i = 0;
        i < Random().nextInt(maxGuestAmount) + minGuestAmount;
        i++) {
      invitations.add(createInvitationString(i));
    }
    return invitations;
  }

  static String getGuestsJson() {
    List<String> guests = getInvitationList();
    var dinnerJson = {'guests': guests};
    return jsonEncoder.convert(dinnerJson);
  }

  static String createInvitationString(int name) {
    String isAlone = Random().nextBool() ? '' : '+one';
    return 'Guest$name $isAlone';
  }

  static void writeJsonGuestsToFile(
      {String filename = _defaultFilename}) async {
    File file = await File(filename).writeAsString(getGuestsJson());
    print('Written generated guests into ${file.path}');
  }

  static Future<Dinner> getDinnerFromFile(
      {String filename = _defaultFilename}) async {
    String invitationsJsonString =
        await File(filename).readAsString(encoding: utf8);
    return Dinner.fromGeneratedJson(jsonDecode(invitationsJsonString));
  }
}
