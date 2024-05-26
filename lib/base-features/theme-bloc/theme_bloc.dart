import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/constants/app_colors.dart';
import 'package:recipes/core/constants/app_fonts.dart';
import 'package:recipes/core/local/storage_service.dart';
import 'package:recipes/core/utils/utils.dart';
import 'package:recipes/injection.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_Started>((event, emit) {
      final service = getIt.get<StorageService>();

      final modeText = service.getTyped<String>(StorageKeys.themeMode);
      ThemeMode themeMode = ThemeMode.system;
      if (modeText != null) {
        themeMode = modeText == 'DARK' ? ThemeMode.dark : ThemeMode.light;
      }

      emit(state.copyWith(
        color: Utils.textToColor(
            service.getTyped<String>(StorageKeys.primaryColor)),
        font: service.getTyped<String>(
                service.getTyped<String>(StorageKeys.fontFamily)) ??
            AppFonts.defaultFontFamily,
        themeMode: themeMode,
      ));
    });

    on<_ChangeFont>((event, emit) {
      getIt.get<StorageService>().set(StorageKeys.fontFamily, event.font);
      emit(state.copyWith(
        font: event.font,
      ));
    });

    on<_ChangeColor>((event, emit) {
      getIt
          .get<StorageService>()
          .set(StorageKeys.primaryColor, Utils.colorToText(event.color));
      emit(state.copyWith(
        color: event.color,
      ));
    });

    on<_ChangeTheme>((event, emit) {
      if (event.themeMode == ThemeMode.system) {
        getIt.get<StorageService>().remove(StorageKeys.themeMode);
      } else {
        getIt.get<StorageService>().set(StorageKeys.themeMode,
            event.themeMode == ThemeMode.dark ? 'DARK' : 'LIGHT');
      }
      emit(state.copyWith(
        themeMode: event.themeMode,
      ));
    });

    on<_ResetSettings>((event, emit) async {
      final service = getIt.get<StorageService>();

      service.set(StorageKeys.primaryColor, AppColors.defaultColor);
      service.set(StorageKeys.fontFamily, AppFonts.defaultFontFamily);
      service.set(StorageKeys.themeMode, null);

      emit(const ThemeState(
        color: AppColors.defaultColor,
        themeMode: ThemeMode.system,
        font: AppFonts.defaultFontFamily,
      ));
    });
  }
}
