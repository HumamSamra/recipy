import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/home/repository/base_home_repository.dart';

@Injectable(as: BaseHomeRepository)
class HomeRepository implements BaseHomeRepository {
  @override
  Future<Either<Failure, List<RecipeModel>>> getRecipes(
      [String? keyword]) async {
    try {
      return const Right([]);
    } catch (err) {
      return Left(Failure(message: err.toString()));
    }
  }
}
