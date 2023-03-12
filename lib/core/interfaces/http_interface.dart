import 'package:http/http.dart';

abstract class IHttp {
  Future<Response> get(
    String url, {
    Map<String, String>? headers,
  });

  Future<Response> post(
    String url, {
    Map<String, String>? headers,
    dynamic body,
  });

  Future<Response> put(
    String url, {
    Map<String, String>? headers,
    dynamic body,
  });

  Future<Response> delete(
    String url, {
    Map<String, String>? headers,
  });
}
