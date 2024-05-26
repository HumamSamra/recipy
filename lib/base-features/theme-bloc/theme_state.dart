part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(AppColors.defaultColor) Color? color,
    @Default(AppFonts.defaultFontFamily) String? font,
    ThemeMode? themeMode,
  }) = _ThemeState;
}
