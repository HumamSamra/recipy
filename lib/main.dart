import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes/base-features/theme-bloc/theme_bloc.dart';
import 'package:recipes/core/router/router.dart';
import 'package:recipes/core/theme/app_theme.dart';
import 'package:recipes/features/home/view/bloc/home_bloc.dart';
import 'package:recipes/features/search/view/bloc/search_bloc.dart';
import 'package:recipes/injection.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final router = AppRouter();

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) =>
                getIt.get<ThemeBloc>()..add(const ThemeEvent.started()),
          ),
          BlocProvider(
            create: (context) =>
                getIt.get<HomeBloc>()..add(const HomeEvent.started()),
          ),
          BlocProvider(
            create: (context) =>
                getIt.get<SearchBloc>()..add(const SearchEvent.started()),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Recipy',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.light(
                color: state.color!,
                fontFamily: state.font!,
              ),
              darkTheme: AppTheme.dark(
                color: state.color!,
                fontFamily: state.font!,
              ),
              themeMode: state.themeMode,
              scrollBehavior: const ScrollBehavior().copyWith(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
              ),
              routerConfig: router.config(),
            );
          },
        ),
      ),
    );
  }
}
