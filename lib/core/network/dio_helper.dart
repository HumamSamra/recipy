import 'dart:io';

import 'package:dio/dio.dart';
import 'package:recipes/core/error/exceptions.dart';
import 'package:recipes/core/error/failure.dart';
import 'package:recipes/core/network/api_endpoints.dart';
import 'package:recipes/core/network/base_network.dart';

class DioHelper implements BaseNetwork {
  final Dio dio;
  DioHelper(this.dio) {
    dio.options.baseUrl = ApiEndpoints.baseUrl;

    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);
  }

  @override
  Future delete(String url, {Map<String, dynamic>? body}) async {
    try {
      final response = await dio.delete(url, data: body);

      return response.data;
    } on DioException catch (e) {
      handleDioErrors(e);
    }
  }

  @override
  Future get(String url, {Map<String, dynamic>? header}) async {
    try {
      final response = await dio.get(url, queryParameters: header);
      return response.data;
    } on DioException catch (err) {
      handleDioErrors(err);
    }
  }

  @override
  Future multipartPost(
    String url,
    Map<String, File> files, {
    Map<String, dynamic>? body,
  }) async {
    try {
      final formData = FormData.fromMap(files);
      formData.files.add(MapEntry(files.entries.first.key,
          await MultipartFile.fromFile(files.entries.first.value.path)));

      if (body != null) {
        body.forEach((key, value) {
          formData.fields.add(MapEntry(key, value.toString()));
        });
      }

      final response = await dio.post(url, data: formData);
      return response.data;
    } on DioException catch (e) {
      handleDioErrors(e);
    }
  }

  @override
  Future post(String url,
      {Map<String, dynamic>? header, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.post(url, data: body);

      return response.data;
    } on DioException catch (e) {
      handleDioErrors(e);
    }
  }

  @override
  Future update(String url, {Map<String, dynamic>? body}) async {
    try {
      final response = await dio.patch(url, data: body);

      return response.data;
    } on DioException catch (e) {
      handleDioErrors(e);
    }
  }

  handleDioErrors(DioException err) {
    if (err.type == DioExceptionType.connectionError) {
      throw const NoInternetException(
        message: "No Internet",
      );
    }
    if (err.type == DioExceptionType.connectionTimeout) {
      throw const Failure(
        message: "Connection TimeOut",
      );
    } else if (err.response!.statusCode == 401) {
      throw const Failure(
        message: "UnAuthorized",
      );
    } else if (err.response!.statusCode! >= 500) {
      throw const Failure(
        message: "Server Exception",
      );
    } else if (err.type == DioExceptionType.badResponse &&
        err.response?.statusCode == 400) {
      throw const Failure(
        message: "Bad Response",
      );
    } else if (err.type == DioExceptionType.badResponse &&
        err.response?.statusCode == 404) {
      throw const Failure(
        message: "Something went wrong",
      );
    } else {
      throw const Failure(
        message: "Server Exception",
      );
    }
  }
}
