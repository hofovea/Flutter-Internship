import 'dart:math';

import 'data_generator.dart';

class Invitation {
  final String name;
  final bool isAlone;

  const Invitation(this.name, this.isAlone);

  factory Invitation.fromString(String invitatonStr) {
    bool isAlone = !invitatonStr.contains("+one");
    String name = invitatonStr.split(' ')[0];
    return Invitation(name, isAlone);
  }

  factory Invitation.random() {
    return Invitation(
        'User${Random().nextInt(DataGenerator.maxGuestAmount) + DataGenerator.minGuestAmount}',
        Random().nextBool());
  }

  Map<String, dynamic> toJson() => {'name': name, 'isAlone': isAlone};

  @override
  String toString() {
    return '$name ${isAlone ? 1 : 2}';
  }
}
