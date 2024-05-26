import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes/core/network/base_network.dart';
import 'package:recipes/core/network/dio_helper.dart';

@module
abstract class NetworkInjection {
  @lazySingleton
  BaseNetwork get network => DioHelper(Dio());
}
