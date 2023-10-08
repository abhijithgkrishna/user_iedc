// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
mixin _$Events {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "event_name")
  String get eventname => throw _privateConstructorUsedError;
  @JsonKey(name: "start_time")
  String get starttime => throw _privateConstructorUsedError;
  @JsonKey(name: "end_time")
  String get endtime => throw _privateConstructorUsedError;
  @JsonKey(name: "speaker")
  String get speaker => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  Map<String, dynamic> get category => throw _privateConstructorUsedError;
  @JsonKey(name: "venue")
  Map<String, dynamic> get venue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res, Events>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "event_name") String eventname,
      @JsonKey(name: "start_time") String starttime,
      @JsonKey(name: "end_time") String endtime,
      @JsonKey(name: "speaker") String speaker,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "category") Map<String, dynamic> category,
      @JsonKey(name: "venue") Map<String, dynamic> venue});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res, $Val extends Events>
    implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventname = null,
    Object? starttime = null,
    Object? endtime = null,
    Object? speaker = null,
    Object? status = null,
    Object? category = null,
    Object? venue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventname: null == eventname
          ? _value.eventname
          : eventname // ignore: cast_nullable_to_non_nullable
              as String,
      starttime: null == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventsImplCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$$EventsImplCopyWith(
          _$EventsImpl value, $Res Function(_$EventsImpl) then) =
      __$$EventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "event_name") String eventname,
      @JsonKey(name: "start_time") String starttime,
      @JsonKey(name: "end_time") String endtime,
      @JsonKey(name: "speaker") String speaker,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "category") Map<String, dynamic> category,
      @JsonKey(name: "venue") Map<String, dynamic> venue});
}

/// @nodoc
class __$$EventsImplCopyWithImpl<$Res>
    extends _$EventsCopyWithImpl<$Res, _$EventsImpl>
    implements _$$EventsImplCopyWith<$Res> {
  __$$EventsImplCopyWithImpl(
      _$EventsImpl _value, $Res Function(_$EventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventname = null,
    Object? starttime = null,
    Object? endtime = null,
    Object? speaker = null,
    Object? status = null,
    Object? category = null,
    Object? venue = null,
  }) {
    return _then(_$EventsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventname: null == eventname
          ? _value.eventname
          : eventname // ignore: cast_nullable_to_non_nullable
              as String,
      starttime: null == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      venue: null == venue
          ? _value._venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsImpl implements _Events {
  const _$EventsImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "event_name") required this.eventname,
      @JsonKey(name: "start_time") required this.starttime,
      @JsonKey(name: "end_time") required this.endtime,
      @JsonKey(name: "speaker") required this.speaker,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "category") required final Map<String, dynamic> category,
      @JsonKey(name: "venue") required final Map<String, dynamic> venue})
      : _category = category,
        _venue = venue;

  factory _$EventsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "event_name")
  final String eventname;
  @override
  @JsonKey(name: "start_time")
  final String starttime;
  @override
  @JsonKey(name: "end_time")
  final String endtime;
  @override
  @JsonKey(name: "speaker")
  final String speaker;
  @override
  @JsonKey(name: "status")
  final String status;
  final Map<String, dynamic> _category;
  @override
  @JsonKey(name: "category")
  Map<String, dynamic> get category {
    if (_category is EqualUnmodifiableMapView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_category);
  }

  final Map<String, dynamic> _venue;
  @override
  @JsonKey(name: "venue")
  Map<String, dynamic> get venue {
    if (_venue is EqualUnmodifiableMapView) return _venue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_venue);
  }

  @override
  String toString() {
    return 'Events(id: $id, eventname: $eventname, starttime: $starttime, endtime: $endtime, speaker: $speaker, status: $status, category: $category, venue: $venue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventname, eventname) ||
                other.eventname == eventname) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._venue, _venue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventname,
      starttime,
      endtime,
      speaker,
      status,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_venue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      __$$EventsImplCopyWithImpl<_$EventsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsImplToJson(
      this,
    );
  }
}

abstract class _Events implements Events {
  const factory _Events(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "event_name") required final String eventname,
      @JsonKey(name: "start_time") required final String starttime,
      @JsonKey(name: "end_time") required final String endtime,
      @JsonKey(name: "speaker") required final String speaker,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "category") required final Map<String, dynamic> category,
      @JsonKey(name: "venue")
      required final Map<String, dynamic> venue}) = _$EventsImpl;

  factory _Events.fromJson(Map<String, dynamic> json) = _$EventsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "event_name")
  String get eventname;
  @override
  @JsonKey(name: "start_time")
  String get starttime;
  @override
  @JsonKey(name: "end_time")
  String get endtime;
  @override
  @JsonKey(name: "speaker")
  String get speaker;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "category")
  Map<String, dynamic> get category;
  @override
  @JsonKey(name: "venue")
  Map<String, dynamic> get venue;
  @override
  @JsonKey(ignore: true)
  _$$EventsImplCopyWith<_$EventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
