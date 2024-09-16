import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
    );
  }
  final String baseUrl = 'https://api.spacexdata.com/v4/';

  Future<List> get({required String endPoints}) async {
    Response response = await _dio.get(endPoints);

    return response.data;
  }
}
