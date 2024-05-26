import 'package:dartz/dartz.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<RecipeModel>>> getRecipes([String? keyword]);
}
