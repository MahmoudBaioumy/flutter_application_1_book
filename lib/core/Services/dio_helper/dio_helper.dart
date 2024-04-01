import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/Services/dio_helper/endPoint.dart';

class DioHelper {
  static Dio? _dio;

  static init() {
    _dio = Dio(BaseOptions(
        baseUrl: EndPoint.baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        }));
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    _dio!.options.headers = {
      'content-type': 'application/json',
      'authorization': 'Bearer $token'
    };
    return await _dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? query,
      required dynamic data,
      String? token}) async {
    _dio!.options.headers = {
      'content-type': 'application/json',
      'authorization': 'Bearer $token'
    };
    return await _dio!.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String? token}) async {
    _dio!.options.headers = {
      'content-type': 'application/json',
      'authorization': 'Bearer $token'
    };
    return await _dio!.put(url, queryParameters: query, data: data);
  }

  static Future<Response> deleteData(
      {required String url, String? token}) async {
    _dio!.options.headers = {
      'content-type': 'application/json',
      'authorization': 'Bearer $token'
    };
    return await _dio!.delete(url);
  }
}
