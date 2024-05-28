import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/recipe-details/repository/base_recipe_details_repository.dart';

@Injectable(as: BaseRecipeDetailsRepository)
class RecipeDetailsRepository implements BaseRecipeDetailsRepository {
  @override
  Future<Either<Failure, RecipeModel>> getRecipe(String id) {
    throw UnimplementedError();
  }
}
