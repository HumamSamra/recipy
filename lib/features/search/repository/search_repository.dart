import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/error/exceptions.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/local/storage_service.dart';
import 'package:recipes/core/models/recipe-model/recipe_model.dart';
import 'package:recipes/core/network/api_endpoints.dart';
import 'package:recipes/core/network/base_network.dart';
import 'package:recipes/features/search/repository/base_search_repository.dart';
import 'package:recipes/injection.dart';

@Injectable(as: BaseSearchRepository)
class SearchRepository implements BaseSearchRepository {
  final BaseNetwork network;
  const SearchRepository(this.network);

  @override
  Future<Either<Failure, List<RecipeModel>>> searchAsync(
      [String? keyword]) async {
    final storageService = getIt.get<StorageService>();
    try {
      final result = await network.get(
        ApiEndpoints.getRecipes,
        header: {
          "s": keyword,
        },
      );

      List list = result['meals'] ?? [];

      final res = list.map((e) => RecipeModel.fromJson(e)).toList();

      return Right(res
          .where((e) => e.meal!.toLowerCase().contains(keyword ?? ''))
          .toList());
    } on Failure catch (err) {
      return Left(Failure(message: err.message));
    } on NoInternetException catch (e) {
      debugPrint(e.message);
      List list = jsonDecode(storageService.get(StorageKeys.cacheRecipes));
      final res = list.map((e) => RecipeModel.fromJson(e));
      return Right(res
          .where((e) => e.meal!.toLowerCase().contains(keyword ?? ''))
          .toList());
    } catch (e) {
      rethrow;
    }
  }
}
