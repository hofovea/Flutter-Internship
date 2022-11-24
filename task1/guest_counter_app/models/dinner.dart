import 'dart:convert';
import 'dart:io';

import 'data_generator.dart';
import 'invitation.dart';

class Dinner {
  final int numberOfInvitations;
  final List<Invitation> guests;
  final int _dinnerPrice = 100;
  final int _hostsNumber = 2;
  final int _badNumberOfGuests = 13;
  final int _baseComputationTime = 1;
  static const String _defaultFilename = './data/guests.json';

  const Dinner(this.numberOfInvitations, this.guests);

  factory Dinner.fromJson(Map<String, dynamic> json) {
    List<String> inviteStringList = [];
    var inviteList = json['guests'] as List<dynamic>;
    for (var item in inviteList) {
      inviteStringList.add(item as String);
    }
    return Dinner.fromList(inviteStringList);
  }

  factory Dinner.fromList(List<String> invitationStringList) {
    int numberOfInvitations = 0;
    List<Invitation> guests = [];
    for (var invitationString in invitationStringList) {
      var invite = Invitation.fromString(invitationString);
      guests.add(invite);
      numberOfInvitations += invite.isAlone ? 1 : 2;
    }
    return Dinner(numberOfInvitations, guests);
  }

  void saveGuestsToJsonFile({String filename = _defaultFilename}) async {
    String guestsJsonString =
        DataGenerator.jsonEncoder.convert({'guests': guests});
    //String guestsJsonString = jsonEncode({'guests': guests});
    File file = await File(filename).writeAsString(guestsJsonString);
    print('Saved guests into ${file.path}');
  }

  Future<int> getPrice() async {
    return Future.delayed(
        Duration(seconds: _baseComputationTime * numberOfInvitations), (() {
      return getTotalPeople() * _dinnerPrice;
    }));
  }

  int getTotalPeople() {
    int totalResult = _hostsNumber + numberOfInvitations;
    return totalResult == _badNumberOfGuests ? totalResult + 1 : totalResult;
  }
}
