// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['idCategory'] as String?,
      name: json['strCategory'] as String?,
      description: json['strCategoryDescription'] as String?,
      thumbUrl: json['strCategoryThumb'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'idCategory': instance.id,
      'strCategory': instance.name,
      'strCategoryDescription': instance.description,
      'strCategoryThumb': instance.thumbUrl,
    };
