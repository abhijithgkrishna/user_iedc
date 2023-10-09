// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venues.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Venues _$VenuesFromJson(Map<String, dynamic> json) {
  return _Venues.fromJson(json);
}

/// @nodoc
mixin _$Venues {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "venuename")
  String get venuename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenuesCopyWith<Venues> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenuesCopyWith<$Res> {
  factory $VenuesCopyWith(Venues value, $Res Function(Venues) then) =
      _$VenuesCopyWithImpl<$Res, Venues>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "venuename") String venuename});
}

/// @nodoc
class _$VenuesCopyWithImpl<$Res, $Val extends Venues>
    implements $VenuesCopyWith<$Res> {
  _$VenuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? venuename = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      venuename: null == venuename
          ? _value.venuename
          : venuename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VenuesImplCopyWith<$Res> implements $VenuesCopyWith<$Res> {
  factory _$$VenuesImplCopyWith(
          _$VenuesImpl value, $Res Function(_$VenuesImpl) then) =
      __$$VenuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "venuename") String venuename});
}

/// @nodoc
class __$$VenuesImplCopyWithImpl<$Res>
    extends _$VenuesCopyWithImpl<$Res, _$VenuesImpl>
    implements _$$VenuesImplCopyWith<$Res> {
  __$$VenuesImplCopyWithImpl(
      _$VenuesImpl _value, $Res Function(_$VenuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? venuename = null,
  }) {
    return _then(_$VenuesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      venuename: null == venuename
          ? _value.venuename
          : venuename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VenuesImpl implements _Venues {
  const _$VenuesImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "venuename") required this.venuename});

  factory _$VenuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VenuesImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "venuename")
  final String venuename;

  @override
  String toString() {
    return 'Venues(id: $id, venuename: $venuename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenuesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.venuename, venuename) ||
                other.venuename == venuename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, venuename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VenuesImplCopyWith<_$VenuesImpl> get copyWith =>
      __$$VenuesImplCopyWithImpl<_$VenuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VenuesImplToJson(
      this,
    );
  }
}

abstract class _Venues implements Venues {
  const factory _Venues(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "venuename") required final String venuename}) =
      _$VenuesImpl;

  factory _Venues.fromJson(Map<String, dynamic> json) = _$VenuesImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "venuename")
  String get venuename;
  @override
  @JsonKey(ignore: true)
  _$$VenuesImplCopyWith<_$VenuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
