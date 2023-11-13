import 'package:dio/dio.dart';

final Dio dio = Dio(BaseOptions(
  baseUrl: 'http://localhost:3001/poli/',
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 3),
));

class Apiclient {
  Future<Response> getdata(String path) async {
    try {
      final Response response = await dio.get(Uri.encodeFull(path));
      if (response.statusCode == 200) {
        return response;
      }
      return response.data;
    } on DioException catch (e) {
      throw e.toString();
    }
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      final response = await dio.post(Uri.encodeFull(path), data: data);
      return response;
    } on DioException catch (e) {
      throw e.toString();
    }
  }

  Future<Response> update(String path, dynamic data) async {
    try {
      final response = await dio.put(Uri.encodeFull(path), data: data);
      return response;
    } on DioException catch (e) {
      throw e.toString();
    }
  }

  Future<Response> deletee(String path, dynamic data) async {
    try {
      final respone = await dio.delete(Uri.encodeFull(path), data: data);
      return respone;
    } on DioException catch (e) {
      throw e.toString();
    }
  }
}
