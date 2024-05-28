// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddRecipeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddRecipeScreen(),
      );
    },
    BottomTabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomTabsScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MyRecipesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyRecipesScreen(),
      );
    },
    RecipeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecipeDetailsScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [AddRecipeScreen]
class AddRecipeRoute extends PageRouteInfo<void> {
  const AddRecipeRoute({List<PageRouteInfo>? children})
      : super(
          AddRecipeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddRecipeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomTabsScreen]
class BottomTabsRoute extends PageRouteInfo<void> {
  const BottomTabsRoute({List<PageRouteInfo>? children})
      : super(
          BottomTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyRecipesScreen]
class MyRecipesRoute extends PageRouteInfo<void> {
  const MyRecipesRoute({List<PageRouteInfo>? children})
      : super(
          MyRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyRecipesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecipeDetailsScreen]
class RecipeDetailsRoute extends PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({
    Key? key,
    required RecipeModel model,
    List<PageRouteInfo>? children,
  }) : super(
          RecipeDetailsRoute.name,
          args: RecipeDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'RecipeDetailsRoute';

  static const PageInfo<RecipeDetailsRouteArgs> page =
      PageInfo<RecipeDetailsRouteArgs>(name);
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final RecipeModel model;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
