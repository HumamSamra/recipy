part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(RequestState.INIT) RequestState requestState,
    @Default([]) List<RecipeModel> recipes,
    String? message,
  }) = _SearchState;
}
