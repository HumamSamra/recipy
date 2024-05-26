import 'dart:io';

abstract class BaseNetwork {
  Future get(String url, {Map<String, dynamic>? header});
  Future post(String url,
      {Map<String, dynamic>? header, Map<String, dynamic>? body});
  Future delete(String url, {Map<String, dynamic>? body});
  Future update(String url, {Map<String, dynamic>? body});
  Future multipartPost(
    String url,
    Map<String, File> files, {
    Map<String, dynamic>? body,
  });
}
