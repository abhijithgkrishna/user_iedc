import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.g.dart';
part 'events.freezed.dart';

@freezed
class Events with _$Events {
  const factory Events({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "event_name") required String eventname,
    @JsonKey(name: "start_time") required String starttime,
    @JsonKey(name: "end_time") required String endtime,
    @JsonKey(name: "speaker") required String speaker,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "venue") required String venue,
    @JsonKey(name: "posterurl") required Map<String, dynamic> posterurl,
    @JsonKey(name: "description") required String description,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
