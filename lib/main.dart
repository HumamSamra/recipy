import 'package:flutter/material.dart';
import 'package:recipes/core/router/router.dart';
import 'package:recipes/core/theme/app_theme.dart';
import 'package:recipes/generated/injection/injection.dart';
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
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MaterialApp.router(
        title: 'Recipy',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.light,
        scrollBehavior: const ScrollBehavior().copyWith(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
        ),
        routerConfig: router.config(),
      ),
    );
  }
}
