// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddRecipeModelImpl _$$AddRecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$AddRecipeModelImpl(
      meal: json['meal'] as String?,
      category: json['category'] as String?,
      area: json['area'] as String?,
      instructions: json['instructions'] as String?,
      imagePath: json['imagePath'] as String?,
      youtubeUrl: json['youtubeUrl'] as String?,
    );

Map<String, dynamic> _$$AddRecipeModelImplToJson(
        _$AddRecipeModelImpl instance) =>
    <String, dynamic>{
      'meal': instance.meal,
      'category': instance.category,
      'area': instance.area,
      'instructions': instance.instructions,
      'imagePath': instance.imagePath,
      'youtubeUrl': instance.youtubeUrl,
    };
