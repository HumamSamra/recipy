import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/enums/request_state.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/search/repository/base_search_repository.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final BaseSearchRepository repositroy;
  SearchBloc({required this.repositroy}) : super(const SearchState()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(requestState: RequestState.LOADING));
      final result = await repositroy.searchAsync();
      result.fold(
        (l) => emit(state.copyWith(
          requestState: RequestState.ERROR,
          message: l.message,
        )),
        (r) => emit(state.copyWith(
          requestState: RequestState.LOADED,
          recipes: r,
        )),
      );
    });
    on<_Search>((event, emit) async {
      emit(state.copyWith(requestState: RequestState.LOADING));
      final result = await repositroy.searchAsync(event.keyword);
      result.fold(
        (l) => emit(state.copyWith(
          requestState: RequestState.ERROR,
          message: l.message,
        )),
        (r) => emit(state.copyWith(
          requestState: RequestState.LOADED,
          recipes: r,
        )),
      );
    });
    on<_ClearSearch>((event, emit) {
      emit(SearchState(
        requestState: RequestState.LOADED,
        recipes: state.recipes,
      ));
    });
  }
}
