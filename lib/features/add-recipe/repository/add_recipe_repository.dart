import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/add-recipe/models/add_recipe_model.dart';
import 'package:recipes/features/add-recipe/repository/base_add_recipe_repository.dart';

class AddRecipeRepository implements BaseAddRecipeRepository {
  @override
  Future<Either<Failure, List<RecipeModel>>> createRecipe(
      AddRecipeModel model, File image) async {
    try {
      return const Right([]);
    } catch (err) {
      return Left(Failure(message: err.toString()));
    }
  }
}
