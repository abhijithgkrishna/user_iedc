// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsImpl _$$EventsImplFromJson(Map<String, dynamic> json) => _$EventsImpl(
      id: json['_id'] as String,
      eventname: json['event_name'] as String,
      starttime: json['start_time'] as String,
      endtime: json['end_time'] as String,
      speaker: json['speaker'] as String,
      status: json['status'] as String,
      category: json['category'] as String,
      venue: json['venue'] as String,
      posterurl: json['posterurl'] as Map<String, dynamic>,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$EventsImplToJson(_$EventsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'event_name': instance.eventname,
      'start_time': instance.starttime,
      'end_time': instance.endtime,
      'speaker': instance.speaker,
      'status': instance.status,
      'category': instance.category,
      'venue': instance.venue,
      'posterurl': instance.posterurl,
      'description': instance.description,
    };
