import 'package:freezed_annotation/freezed_annotation.dart';

part 'venues.g.dart';
part 'venues.freezed.dart';

@freezed
class Venues with _$Venues {
  const factory Venues({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "venuename")
    required String venuename,
  }) = _Venues;

  factory Venues.fromJson(Map<String, dynamic> json) => _$VenuesFromJson(json);
}
