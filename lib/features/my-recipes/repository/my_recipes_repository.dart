import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/my-recipes/repository/base_my_recipes_repository.dart';

@Injectable(as: BaseMyRecipesRepository)
class MyRecipesRepository implements BaseMyRecipesRepository {
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
