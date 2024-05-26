import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_recipe_model.freezed.dart';
part 'add_recipe_model.g.dart';

@freezed
class AddRecipeModel with _$AddRecipeModel {
  factory AddRecipeModel({
    String? meal,
    String? category,
    String? area,
    String? instructions,
    String? imagePath,
    String? youtubeUrl,
  }) = _AddRecipeModel;

  factory AddRecipeModel.fromJson(Map<String, dynamic> json) =>
      _$AddRecipeModelFromJson(json);
}
