// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'base-features/theme-bloc/theme_bloc.dart' as _i3;
import 'core/network/base_network.dart' as _i4;
import 'core/network/network.module.dart' as _i14;
import 'features/home/repository/base_home_repository.dart' as _i11;
import 'features/home/repository/home_repository.dart' as _i12;
import 'features/home/view/bloc/home_bloc.dart' as _i13;
import 'features/my-recipes/repository/base_my_recipes_repository.dart' as _i5;
import 'features/my-recipes/repository/my_recipes_repository.dart' as _i6;
import 'features/recipe-details/repository/base_recipe_details_repository.dart'
    as _i9;
import 'features/recipe-details/repository/recipe_details_repository.dart'
    as _i10;
import 'features/search/repository/base_search_repository.dart' as _i7;
import 'features/search/repository/search_repository.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkInjection = _$NetworkInjection();
    gh.factory<_i3.ThemeBloc>(() => _i3.ThemeBloc());
    gh.lazySingleton<_i4.BaseNetwork>(() => networkInjection.network);
    gh.factory<_i5.BaseMyRecipesRepository>(() => _i6.MyRecipesRepository());
    gh.factory<_i7.BaseSearchRepository>(() => _i8.SearchRepository());
    gh.factory<_i9.BaseRecipeDetailsRepository>(
        () => _i10.RecipeDetailsRepository());
    gh.factory<_i11.BaseHomeRepository>(
        () => _i12.HomeRepository(gh<_i4.BaseNetwork>()));
    gh.factory<_i13.HomeBloc>(
        () => _i13.HomeBloc(repository: gh<_i11.BaseHomeRepository>()));
    return this;
  }
}

class _$NetworkInjection extends _i14.NetworkInjection {}
