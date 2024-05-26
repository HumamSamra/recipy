// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ThemeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeFontImplCopyWith<$Res> {
  factory _$$ChangeFontImplCopyWith(
          _$ChangeFontImpl value, $Res Function(_$ChangeFontImpl) then) =
      __$$ChangeFontImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String font});
}

/// @nodoc
class __$$ChangeFontImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeFontImpl>
    implements _$$ChangeFontImplCopyWith<$Res> {
  __$$ChangeFontImplCopyWithImpl(
      _$ChangeFontImpl _value, $Res Function(_$ChangeFontImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
  }) {
    return _then(_$ChangeFontImpl(
      null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeFontImpl implements _ChangeFont {
  const _$ChangeFontImpl(this.font);

  @override
  final String font;

  @override
  String toString() {
    return 'ThemeEvent.changeFont(font: $font)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFontImpl &&
            (identical(other.font, font) || other.font == font));
  }

  @override
  int get hashCode => Object.hash(runtimeType, font);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFontImplCopyWith<_$ChangeFontImpl> get copyWith =>
      __$$ChangeFontImplCopyWithImpl<_$ChangeFontImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) {
    return changeFont(font);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) {
    return changeFont?.call(font);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) {
    if (changeFont != null) {
      return changeFont(font);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) {
    return changeFont(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) {
    return changeFont?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) {
    if (changeFont != null) {
      return changeFont(this);
    }
    return orElse();
  }
}

abstract class _ChangeFont implements ThemeEvent {
  const factory _ChangeFont(final String font) = _$ChangeFontImpl;

  String get font;
  @JsonKey(ignore: true)
  _$$ChangeFontImplCopyWith<_$ChangeFontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorImplCopyWith<$Res> {
  factory _$$ChangeColorImplCopyWith(
          _$ChangeColorImpl value, $Res Function(_$ChangeColorImpl) then) =
      __$$ChangeColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$ChangeColorImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeColorImpl>
    implements _$$ChangeColorImplCopyWith<$Res> {
  __$$ChangeColorImplCopyWithImpl(
      _$ChangeColorImpl _value, $Res Function(_$ChangeColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$ChangeColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeColorImpl implements _ChangeColor {
  const _$ChangeColorImpl(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'ThemeEvent.changeColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      __$$ChangeColorImplCopyWithImpl<_$ChangeColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) {
    return changeColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) {
    return changeColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeColor implements ThemeEvent {
  const factory _ChangeColor(final Color color) = _$ChangeColorImpl;

  Color get color;
  @JsonKey(ignore: true)
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeThemeImplCopyWith<$Res> {
  factory _$$ChangeThemeImplCopyWith(
          _$ChangeThemeImpl value, $Res Function(_$ChangeThemeImpl) then) =
      __$$ChangeThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ChangeThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeThemeImpl>
    implements _$$ChangeThemeImplCopyWith<$Res> {
  __$$ChangeThemeImplCopyWithImpl(
      _$ChangeThemeImpl _value, $Res Function(_$ChangeThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ChangeThemeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ChangeThemeImpl implements _ChangeTheme {
  const _$ChangeThemeImpl(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeEvent.changeTheme(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      __$$ChangeThemeImplCopyWithImpl<_$ChangeThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) {
    return changeTheme(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) {
    return changeTheme?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ThemeEvent {
  const factory _ChangeTheme(final ThemeMode themeMode) = _$ChangeThemeImpl;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSettingsImplCopyWith<$Res> {
  factory _$$ResetSettingsImplCopyWith(
          _$ResetSettingsImpl value, $Res Function(_$ResetSettingsImpl) then) =
      __$$ResetSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSettingsImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ResetSettingsImpl>
    implements _$$ResetSettingsImplCopyWith<$Res> {
  __$$ResetSettingsImplCopyWithImpl(
      _$ResetSettingsImpl _value, $Res Function(_$ResetSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSettingsImpl implements _ResetSettings {
  const _$ResetSettingsImpl();

  @override
  String toString() {
    return 'ThemeEvent.resetSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String font) changeFont,
    required TResult Function(Color color) changeColor,
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function() resetSettings,
  }) {
    return resetSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String font)? changeFont,
    TResult? Function(Color color)? changeColor,
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function()? resetSettings,
  }) {
    return resetSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String font)? changeFont,
    TResult Function(Color color)? changeColor,
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function()? resetSettings,
    required TResult orElse(),
  }) {
    if (resetSettings != null) {
      return resetSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFont value) changeFont,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ResetSettings value) resetSettings,
  }) {
    return resetSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFont value)? changeFont,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ResetSettings value)? resetSettings,
  }) {
    return resetSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFont value)? changeFont,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ResetSettings value)? resetSettings,
    required TResult orElse(),
  }) {
    if (resetSettings != null) {
      return resetSettings(this);
    }
    return orElse();
  }
}

abstract class _ResetSettings implements ThemeEvent {
  const factory _ResetSettings() = _$ResetSettingsImpl;
}

/// @nodoc
mixin _$ThemeState {
  Color? get color => throw _privateConstructorUsedError;
  String? get font => throw _privateConstructorUsedError;
  ThemeMode? get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({Color? color, String? font, ThemeMode? themeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? font = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color? color, String? font, ThemeMode? themeMode});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? font = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_$ThemeStateImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      font: freezed == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl implements _ThemeState {
  const _$ThemeStateImpl(
      {this.color = AppColors.defaultColor,
      this.font = AppFonts.defaultFontFamily,
      this.themeMode});

  @override
  @JsonKey()
  final Color? color;
  @override
  @JsonKey()
  final String? font;
  @override
  final ThemeMode? themeMode;

  @override
  String toString() {
    return 'ThemeState(color: $color, font: $font, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, font, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {final Color? color,
      final String? font,
      final ThemeMode? themeMode}) = _$ThemeStateImpl;

  @override
  Color? get color;
  @override
  String? get font;
  @override
  ThemeMode? get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
