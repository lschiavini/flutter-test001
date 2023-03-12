import 'dart:convert';
import 'dart:io';

import '../interfaces/http_interface.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

class HttpService implements IHttp {
  static const Duration duration = Duration(
    seconds: 10,
  );

  late String token;

  HttpService() : super() {
    token = '';
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, String>? headers,
  }) async {
    final HttpClient ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final IOClient http = IOClient(ioc);

    headers ??= <String, String>{
      // 'Authorization': 'Bearer '$token',
    };
    // headers['Authorization'] = 'Bearer $token';

    headers['Content-Type'] = 'application/json';
    headers['Accept'] = '*/*';

    final Response response = await http
        .get(
          Uri.parse(url),
          headers: headers,
        )
        .timeout(duration);

    return response;
  }

  @override
  Future<Response> post(
    String url, {
    Map<String, String>? headers,
    body,
  }) async {
    final HttpClient ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final IOClient http = IOClient(ioc);

    headers ??= <String, String>{
      // 'Authorization': 'Bearer $token',
    };
    // headers['Authorization'] = 'Bearer $token';
    headers['Content-Type'] = 'application/json';
    headers['Accept'] = '*/*';

    final Response response = await http
        .post(
          Uri.parse(
            url,
          ),
          headers: headers,
          body: jsonEncode(
            body ?? {},
          ),
        )
        .timeout(
          duration,
        );

    return response;
  }

  @override
  Future<Response> put(
    String url, {
    Map<String, String>? headers,
    body,
  }) async {
    final HttpClient ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final IOClient http = IOClient(ioc);

    headers ??= <String, String>{
      // 'Authorization': 'Bearer $token',
    };
    // headers['Authorization'] = 'Bearer $token';
    headers['Content-Type'] = 'application/json';
    headers['Accept'] = '*/*';

    final Response response = await http
        .put(
          Uri.parse(url),
          headers: headers,
          body: body,
        )
        .timeout(duration);

    return response;
  }

  @override
  Future<Response> delete(
    String url, {
    Map<String, String>? headers,
  }) async {
    final HttpClient ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final IOClient http = IOClient(ioc);

    headers ??= <String, String>{
      // 'Authorization': 'Bearer $token',
    };
    // headers['Authorization'] = 'Bearer $token';
    headers['Content-Type'] = 'application/json';
    headers['Accept'] = '*/*';

    final Response response = await http
        .delete(
          Uri.parse(url),
          headers: headers,
        )
        .timeout(duration);

    return response;
  }

  @override
  Future<Response> postFile({
    required String url,
    required File file,
  }) async {
    final HttpClient ioc = HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final IOClient http = IOClient(ioc);

    Map<String, String> headers = <String, String>{
      // 'Authorization': 'Bearer $token',
    };
    // headers['Authorization'] = 'Bearer $token';
    headers['Accept'] = '*/*';

    List<int> fileContent = await file.readAsBytes();

    final Response response = await http
        .post(
          Uri.parse(
            url,
          ),
          headers: headers,
          body: fileContent,
        )
        .timeout(
          duration,
        );

    return response;
  }
}
