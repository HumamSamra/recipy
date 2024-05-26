// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../base-features/theme-bloc/theme_bloc.dart' as _i3;
import '../../features/home/repository/base_home_repository.dart' as _i8;
import '../../features/home/repository/home_repository.dart' as _i9;
import '../../features/my-recipes/repository/base_my_recipes_repository.dart'
    as _i4;
import '../../features/my-recipes/repository/my_recipes_repository.dart' as _i5;
import '../../features/search/repository/base_search_repository.dart' as _i6;
import '../../features/search/repository/search_repository.dart' as _i7;

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
    gh.factory<_i3.ThemeBloc>(() => _i3.ThemeBloc());
    gh.factory<_i4.BaseMyRecipesRepository>(() => _i5.MyRecipesRepository());
    gh.factory<_i6.BaseSearchRepository>(() => _i7.SearchRepository());
    gh.factory<_i8.BaseHomeRepository>(() => _i9.HomeRepository());
    return this;
  }
}
