import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_generator.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
class Invitation with _$Invitation {
  const Invitation._();
  factory Invitation({required String name, required bool isAlone}) =
      _Invitation;
  factory Invitation.fromJson(Map<String, dynamic> json) =>
      _$InvitationFromJson(json);
  factory Invitation.random() {
    return Invitation(
        name:
            'User${Random().nextInt(DataGenerator.maxGuestAmount) + DataGenerator.minGuestAmount}',
        isAlone: Random().nextBool());
  }
  factory Invitation.fromString(String invitaton) {
    bool isAlone = !invitaton.contains("+one");
    String name = invitaton.split(' ')[0];
    return Invitation(name: name, isAlone: isAlone);
  }
}
