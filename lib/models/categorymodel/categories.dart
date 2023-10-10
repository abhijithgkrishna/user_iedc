import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "categoryname")
    required String categoryname,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}
