// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const RecipeModel._();

  const factory RecipeModel({
    @JsonKey(name: 'idMeal') int? id,
    @JsonKey(name: 'strMeal') String? meal,
    @JsonKey(name: 'strCategory') String? category,
    @JsonKey(name: 'strArea') String? area,
    @JsonKey(name: 'strInstructions') String? instructions,
    @JsonKey(name: 'strMealThumb') String? thumbUrl,
    @JsonKey(name: 'strYoutube') String? youtubeUrl,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
