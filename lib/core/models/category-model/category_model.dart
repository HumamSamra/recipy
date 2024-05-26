// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  factory CategoryModel({
    @JsonKey(name: 'idCategory') String? id,
    @JsonKey(name: 'strCategory') String? name,
    @JsonKey(name: 'strCategoryDescription') String? description,
    @JsonKey(name: 'strCategoryThumb') String? thumbUrl,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
