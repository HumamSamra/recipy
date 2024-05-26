// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  @JsonKey(name: 'idMeal')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'strMeal')
  String? get meal => throw _privateConstructorUsedError;
  @JsonKey(name: 'strCategory')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'strArea')
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'strInstructions')
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'strMealThumb')
  String? get thumbUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'strYoutube')
  String? get youtubeUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') int? id,
      @JsonKey(name: 'strMeal') String? meal,
      @JsonKey(name: 'strCategory') String? category,
      @JsonKey(name: 'strArea') String? area,
      @JsonKey(name: 'strInstructions') String? instructions,
      @JsonKey(name: 'strMealThumb') String? thumbUrl,
      @JsonKey(name: 'strYoutube') String? youtubeUrl});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? meal = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? instructions = freezed,
    Object? thumbUrl = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeUrl: freezed == youtubeUrl
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idMeal') int? id,
      @JsonKey(name: 'strMeal') String? meal,
      @JsonKey(name: 'strCategory') String? category,
      @JsonKey(name: 'strArea') String? area,
      @JsonKey(name: 'strInstructions') String? instructions,
      @JsonKey(name: 'strMealThumb') String? thumbUrl,
      @JsonKey(name: 'strYoutube') String? youtubeUrl});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? meal = freezed,
    Object? category = freezed,
    Object? area = freezed,
    Object? instructions = freezed,
    Object? thumbUrl = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_$RecipeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
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
class _$RecipeModelImpl extends _RecipeModel {
  const _$RecipeModelImpl(
      {@JsonKey(name: 'idMeal') this.id,
      @JsonKey(name: 'strMeal') this.meal,
      @JsonKey(name: 'strCategory') this.category,
      @JsonKey(name: 'strArea') this.area,
      @JsonKey(name: 'strInstructions') this.instructions,
      @JsonKey(name: 'strMealThumb') this.thumbUrl,
      @JsonKey(name: 'strYoutube') this.youtubeUrl})
      : super._();

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  @JsonKey(name: 'idMeal')
  final int? id;
  @override
  @JsonKey(name: 'strMeal')
  final String? meal;
  @override
  @JsonKey(name: 'strCategory')
  final String? category;
  @override
  @JsonKey(name: 'strArea')
  final String? area;
  @override
  @JsonKey(name: 'strInstructions')
  final String? instructions;
  @override
  @JsonKey(name: 'strMealThumb')
  final String? thumbUrl;
  @override
  @JsonKey(name: 'strYoutube')
  final String? youtubeUrl;

  @override
  String toString() {
    return 'RecipeModel(id: $id, meal: $meal, category: $category, area: $area, instructions: $instructions, thumbUrl: $thumbUrl, youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meal, meal) || other.meal == meal) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.youtubeUrl, youtubeUrl) ||
                other.youtubeUrl == youtubeUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, meal, category, area,
      instructions, thumbUrl, youtubeUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeModel extends RecipeModel {
  const factory _RecipeModel(
          {@JsonKey(name: 'idMeal') final int? id,
          @JsonKey(name: 'strMeal') final String? meal,
          @JsonKey(name: 'strCategory') final String? category,
          @JsonKey(name: 'strArea') final String? area,
          @JsonKey(name: 'strInstructions') final String? instructions,
          @JsonKey(name: 'strMealThumb') final String? thumbUrl,
          @JsonKey(name: 'strYoutube') final String? youtubeUrl}) =
      _$RecipeModelImpl;
  const _RecipeModel._() : super._();

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  @JsonKey(name: 'idMeal')
  int? get id;
  @override
  @JsonKey(name: 'strMeal')
  String? get meal;
  @override
  @JsonKey(name: 'strCategory')
  String? get category;
  @override
  @JsonKey(name: 'strArea')
  String? get area;
  @override
  @JsonKey(name: 'strInstructions')
  String? get instructions;
  @override
  @JsonKey(name: 'strMealThumb')
  String? get thumbUrl;
  @override
  @JsonKey(name: 'strYoutube')
  String? get youtubeUrl;
  @override
  @JsonKey(ignore: true)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
