import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/add-recipe/view/add_recipe.imports.dart';
import 'package:recipes/features/bottom-tabs/bottom_tabs.imports.dart';
import 'package:recipes/features/home/view/home.imports.dart';
import 'package:recipes/features/my-recipes/view/my_recipes.imports.dart';
import 'package:recipes/features/recipe-details/view/recipe_details.imports.dart';
import 'package:recipes/features/search/view/search.imports.dart';
import 'package:recipes/features/settings/settings_screen.imports.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: BottomTabsRoute.page,
          path: '/bottom-tabs',
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
              path: 'home',
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: 'search',
            ),
            AutoRoute(
              page: MyRecipesRoute.page,
              path: 'my-recipes',
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: 'settings',
            ),
          ],
        ),
        AutoRoute(
          page: AddRecipeRoute.page,
          path: '/add-recipe',
        ),
        AutoRoute(
          page: RecipeDetailsRoute.page,
          path: '/recipe-details:id',
        ),
      ];
}
