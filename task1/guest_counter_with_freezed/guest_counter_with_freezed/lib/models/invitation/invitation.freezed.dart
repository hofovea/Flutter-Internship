// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Invitation _$InvitationFromJson(Map<String, dynamic> json) {
  return _Invitation.fromJson(json);
}

/// @nodoc
mixin _$Invitation {
  String get name => throw _privateConstructorUsedError;
  bool get isAlone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationCopyWith<Invitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationCopyWith<$Res> {
  factory $InvitationCopyWith(
          Invitation value, $Res Function(Invitation) then) =
      _$InvitationCopyWithImpl<$Res, Invitation>;
  @useResult
  $Res call({String name, bool isAlone});
}

/// @nodoc
class _$InvitationCopyWithImpl<$Res, $Val extends Invitation>
    implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isAlone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isAlone: null == isAlone
          ? _value.isAlone
          : isAlone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvitationCopyWith<$Res>
    implements $InvitationCopyWith<$Res> {
  factory _$$_InvitationCopyWith(
          _$_Invitation value, $Res Function(_$_Invitation) then) =
      __$$_InvitationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isAlone});
}

/// @nodoc
class __$$_InvitationCopyWithImpl<$Res>
    extends _$InvitationCopyWithImpl<$Res, _$_Invitation>
    implements _$$_InvitationCopyWith<$Res> {
  __$$_InvitationCopyWithImpl(
      _$_Invitation _value, $Res Function(_$_Invitation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isAlone = null,
  }) {
    return _then(_$_Invitation(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isAlone: null == isAlone
          ? _value.isAlone
          : isAlone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invitation extends _Invitation {
  _$_Invitation({required this.name, required this.isAlone}) : super._();

  factory _$_Invitation.fromJson(Map<String, dynamic> json) =>
      _$$_InvitationFromJson(json);

  @override
  final String name;
  @override
  final bool isAlone;

  @override
  String toString() {
    return 'Invitation(name: $name, isAlone: $isAlone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invitation &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isAlone, isAlone) || other.isAlone == isAlone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, isAlone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvitationCopyWith<_$_Invitation> get copyWith =>
      __$$_InvitationCopyWithImpl<_$_Invitation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvitationToJson(
      this,
    );
  }
}

abstract class _Invitation extends Invitation {
  factory _Invitation(
      {required final String name,
      required final bool isAlone}) = _$_Invitation;
  _Invitation._() : super._();

  factory _Invitation.fromJson(Map<String, dynamic> json) =
      _$_Invitation.fromJson;

  @override
  String get name;
  @override
  bool get isAlone;
  @override
  @JsonKey(ignore: true)
  _$$_InvitationCopyWith<_$_Invitation> get copyWith =>
      throw _privateConstructorUsedError;
}
