part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestState.INIT) RequestState requestState,
    @Default('Unknown Error') String? message,
    @Default([]) List<RecipeModel> recipes,
  }) = _HomeState;
}
