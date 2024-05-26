import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/add-recipe/models/add_recipe_model.dart';

abstract class BaseAddRecipeRepository {
  Future<Either<Failure, List<RecipeModel>>> createRecipe(
      AddRecipeModel model, File image);
}
