// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddRecipeModel _$AddRecipeModelFromJson(Map<String, dynamic> json) {
  return _AddRecipeModel.fromJson(json);
}

/// @nodoc
mixin _$AddRecipeModel {
  String? get meal => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get youtubeUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRecipeModelCopyWith<AddRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRecipeModelCopyWith<$Res> {
  factory $AddRecipeModelCopyWith(
          AddRecipeModel value, $Res Function(AddRecipeModel) then) =
      _$AddRecipeModelCopyWithImpl<$Res, AddRecipeModel>;
  @useResult
  $Res call(
      {String? meal,
      String? category,
      String? area,
      String? instructions,
      String? imagePath,
      String? youtubeUrl});
}

/// @nodoc
class _$AddRecipeModelCopyWithImpl<$Res, $Val extends AddRecipeModel>
    implements $AddRecipeModelCopyWith<$Res> {
  _$AddRecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? instructions = freezed,
    Object? imagePath = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_value.copyWith(
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeUrl: freezed == youtubeUrl
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddRecipeModelImplCopyWith<$Res>
    implements $AddRecipeModelCopyWith<$Res> {
  factory _$$AddRecipeModelImplCopyWith(_$AddRecipeModelImpl value,
          $Res Function(_$AddRecipeModelImpl) then) =
      __$$AddRecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? meal,
      String? category,
      String? area,
      String? instructions,
      String? imagePath,
      String? youtubeUrl});
}

/// @nodoc
class __$$AddRecipeModelImplCopyWithImpl<$Res>
    extends _$AddRecipeModelCopyWithImpl<$Res, _$AddRecipeModelImpl>
    implements _$$AddRecipeModelImplCopyWith<$Res> {
  __$$AddRecipeModelImplCopyWithImpl(
      _$AddRecipeModelImpl _value, $Res Function(_$AddRecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? instructions = freezed,
    Object? imagePath = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_$AddRecipeModelImpl(
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeUrl: freezed == youtubeUrl
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddRecipeModelImpl implements _AddRecipeModel {
  _$AddRecipeModelImpl(
      {this.meal,
      this.category,
      this.area,
      this.instructions,
      this.imagePath,
      this.youtubeUrl});

  factory _$AddRecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddRecipeModelImplFromJson(json);

  @override
  final String? meal;
  @override
  final String? category;
  @override
  final String? area;
  @override
  final String? instructions;
  @override
  final String? imagePath;
  @override
  final String? youtubeUrl;

  @override
  String toString() {
    return 'AddRecipeModel(meal: $meal, category: $category, area: $area, instructions: $instructions, imagePath: $imagePath, youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRecipeModelImpl &&
            (identical(other.meal, meal) || other.meal == meal) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.youtubeUrl, youtubeUrl) ||
                other.youtubeUrl == youtubeUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meal, category, area, instructions, imagePath, youtubeUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRecipeModelImplCopyWith<_$AddRecipeModelImpl> get copyWith =>
      __$$AddRecipeModelImplCopyWithImpl<_$AddRecipeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddRecipeModelImplToJson(
      this,
    );
  }
}

abstract class _AddRecipeModel implements AddRecipeModel {
  factory _AddRecipeModel(
      {final String? meal,
      final String? category,
      final String? area,
      final String? instructions,
      final String? imagePath,
      final String? youtubeUrl}) = _$AddRecipeModelImpl;

  factory _AddRecipeModel.fromJson(Map<String, dynamic> json) =
      _$AddRecipeModelImpl.fromJson;

  @override
  String? get meal;
  @override
  String? get category;
  @override
  String? get area;
  @override
  String? get instructions;
  @override
  String? get imagePath;
  @override
  String? get youtubeUrl;
  @override
  @JsonKey(ignore: true)
  _$$AddRecipeModelImplCopyWith<_$AddRecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
