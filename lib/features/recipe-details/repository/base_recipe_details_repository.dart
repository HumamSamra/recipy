import 'package:dartz/dartz.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';

abstract class BaseRecipeDetailsRepository {
  Future<Either<Failure, RecipeModel>> getRecipe(String id);
}
