import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/enums/request_state.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/home/repository/base_home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BaseHomeRepository repository;
  HomeBloc({required this.repository}) : super(const HomeState()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(requestState: RequestState.LOADING));

      final result = await repository.getRecipes();

      emit(
        result.fold(
          (l) => state.copyWith(
            requestState: RequestState.ERROR,
            message: l.message,
          ),
          (r) => state.copyWith(
            requestState: RequestState.LOADED,
            recipes: r,
          ),
        ),
      );
    });
  }
}
