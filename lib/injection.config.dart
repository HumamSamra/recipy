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
import 'core/network/network.module.dart' as _i15;
import 'features/home/repository/base_home_repository.dart' as _i9;
import 'features/home/repository/home_repository.dart' as _i10;
import 'features/home/view/bloc/home_bloc.dart' as _i13;
import 'features/my-recipes/repository/base_my_recipes_repository.dart' as _i5;
import 'features/my-recipes/repository/my_recipes_repository.dart' as _i6;
import 'features/recipe-details/repository/base_recipe_details_repository.dart'
    as _i7;
import 'features/recipe-details/repository/recipe_details_repository.dart'
    as _i8;
import 'features/search/repository/base_search_repository.dart' as _i11;
import 'features/search/repository/search_repository.dart' as _i12;
import 'features/search/view/bloc/search_bloc.dart' as _i14;

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
    gh.factory<_i7.BaseRecipeDetailsRepository>(
        () => _i8.RecipeDetailsRepository());
    gh.factory<_i9.BaseHomeRepository>(
        () => _i10.HomeRepository(gh<_i4.BaseNetwork>()));
    gh.factory<_i11.BaseSearchRepository>(
        () => _i12.SearchRepository(gh<_i4.BaseNetwork>()));
    gh.factory<_i13.HomeBloc>(
        () => _i13.HomeBloc(repository: gh<_i9.BaseHomeRepository>()));
    gh.factory<_i14.SearchBloc>(
        () => _i14.SearchBloc(repositroy: gh<_i11.BaseSearchRepository>()));
    return this;
  }
}

class _$NetworkInjection extends _i15.NetworkInjection {}
