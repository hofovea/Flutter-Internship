// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dinner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dinner _$DinnerFromJson(Map<String, dynamic> json) {
  return _Dinner.fromJson(json);
}

/// @nodoc
mixin _$Dinner {
  int get numberOfInvitations => throw _privateConstructorUsedError;
  List<Invitation> get guests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DinnerCopyWith<Dinner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DinnerCopyWith<$Res> {
  factory $DinnerCopyWith(Dinner value, $Res Function(Dinner) then) =
      _$DinnerCopyWithImpl<$Res, Dinner>;
  @useResult
  $Res call({int numberOfInvitations, List<Invitation> guests});
}

/// @nodoc
class _$DinnerCopyWithImpl<$Res, $Val extends Dinner>
    implements $DinnerCopyWith<$Res> {
  _$DinnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfInvitations = null,
    Object? guests = null,
  }) {
    return _then(_value.copyWith(
      numberOfInvitations: null == numberOfInvitations
          ? _value.numberOfInvitations
          : numberOfInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Invitation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DinnerCopyWith<$Res> implements $DinnerCopyWith<$Res> {
  factory _$$_DinnerCopyWith(_$_Dinner value, $Res Function(_$_Dinner) then) =
      __$$_DinnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numberOfInvitations, List<Invitation> guests});
}

/// @nodoc
class __$$_DinnerCopyWithImpl<$Res>
    extends _$DinnerCopyWithImpl<$Res, _$_Dinner>
    implements _$$_DinnerCopyWith<$Res> {
  __$$_DinnerCopyWithImpl(_$_Dinner _value, $Res Function(_$_Dinner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfInvitations = null,
    Object? guests = null,
  }) {
    return _then(_$_Dinner(
      numberOfInvitations: null == numberOfInvitations
          ? _value.numberOfInvitations
          : numberOfInvitations // ignore: cast_nullable_to_non_nullable
              as int,
      guests: null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Invitation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dinner extends _Dinner {
  _$_Dinner(
      {required this.numberOfInvitations,
      required final List<Invitation> guests})
      : _guests = guests,
        super._();

  factory _$_Dinner.fromJson(Map<String, dynamic> json) =>
      _$$_DinnerFromJson(json);

  @override
  final int numberOfInvitations;
  final List<Invitation> _guests;
  @override
  List<Invitation> get guests {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  String toString() {
    return 'Dinner(numberOfInvitations: $numberOfInvitations, guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dinner &&
            (identical(other.numberOfInvitations, numberOfInvitations) ||
                other.numberOfInvitations == numberOfInvitations) &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfInvitations,
      const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DinnerCopyWith<_$_Dinner> get copyWith =>
      __$$_DinnerCopyWithImpl<_$_Dinner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DinnerToJson(
      this,
    );
  }
}

abstract class _Dinner extends Dinner {
  factory _Dinner(
      {required final int numberOfInvitations,
      required final List<Invitation> guests}) = _$_Dinner;
  _Dinner._() : super._();

  factory _Dinner.fromJson(Map<String, dynamic> json) = _$_Dinner.fromJson;

  @override
  int get numberOfInvitations;
  @override
  List<Invitation> get guests;
  @override
  @JsonKey(ignore: true)
  _$$_DinnerCopyWith<_$_Dinner> get copyWith =>
      throw _privateConstructorUsedError;
}
