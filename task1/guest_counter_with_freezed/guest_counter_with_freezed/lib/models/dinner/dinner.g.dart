// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dinner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dinner _$$_DinnerFromJson(Map<String, dynamic> json) => _$_Dinner(
      numberOfInvitations: json['numberOfInvitations'] as int,
      guests: (json['guests'] as List<dynamic>)
          .map((e) => Invitation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DinnerToJson(_$_Dinner instance) => <String, dynamic>{
      'numberOfInvitations': instance.numberOfInvitations,
      'guests': instance.guests,
    };
