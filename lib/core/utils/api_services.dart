import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({
    required String baseUrl,
    required String endpoint,
  }) async {
    Response response = await dio.get(_baseUrl);

    return response.data;
  }
}
