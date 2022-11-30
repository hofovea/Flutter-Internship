import 'package:flutter/widgets.dart';

const String _kFontFam = 'LessonsIcons';
const IconData _directionsCar = IconData(0xe800, fontFamily: _kFontFam);
const IconData _steeringWheel = IconData(0xe801, fontFamily: _kFontFam);
const IconData _repair = IconData(0xea7f, fontFamily: _kFontFam);

IconData getIconDataByName(String name) {
  switch (name) {
    case 'directions_car':
      {
        return _directionsCar;
      }
    case 'steering_wheel':
      {
        return _steeringWheel;
      }
    case 'repair':
      {
        return _repair;
      }
    default:
      {
        throw Exception('No such icon with name $name');
      }
  }
}
