import 'package:dio/dio.dart';
import '../constants/network_constants.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = NetworkConstants.baseUrl
      ..options.connectTimeout = const Duration(
        milliseconds: NetworkConstants.connectionTimeout,
      )
      ..options.receiveTimeout = const Duration(
        milliseconds: NetworkConstants.receiveTimeout,
      )
      ..options.responseType = ResponseType.json;
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}