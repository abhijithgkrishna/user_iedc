import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    required String categoryname,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}
