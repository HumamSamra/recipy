part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started() = _Started;
  const factory ThemeEvent.changeFont(String font) = _ChangeFont;
  const factory ThemeEvent.changeColor(Color color) = _ChangeColor;
  const factory ThemeEvent.changeTheme(ThemeMode themeMode) = _ChangeTheme;
  const factory ThemeEvent.resetSettings() = _ResetSettings;
}
