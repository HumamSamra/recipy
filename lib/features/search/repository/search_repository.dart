import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/features/search/repository/base_search_repository.dart';

@Injectable(as: BaseSearchRepository)
class SearchRepository implements BaseSearchRepository {
  @override
  Future<Either<Failure, List<RecipeModel>>> getAsync([String? keyword]) async {
    try {
      return const Right([]);
    } catch (err) {
      return Left(Failure(message: err.toString()));
    }
  }
}
