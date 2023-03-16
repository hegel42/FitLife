import 'package:dio/dio.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';

class EverydayPictureApi {
  final DioClient dioClient;

  EverydayPictureApi({required this.dioClient});

  Future<Response> getEverydayPicture() async {
    try {
      final Response response = await dioClient.get('planetary/apod');

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
