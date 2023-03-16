import 'package:dio/dio.dart';
import 'package:fitness_app/core/di/service_locator.dart';
import 'package:fitness_app/core/models/everyday_picture.dart';
import 'package:fitness_app/core/network/api/constants.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/core/network/dio_exceptions.dart';

class NetworkRepository {
  final Dio dio = Dio(
    BaseOptions(
      connectTimeout: Endpoints.connectionTimeout,
      receiveTimeout: Endpoints.receiveTimeout,
      sendTimeout: Endpoints.receiveTimeout,
    ),
  );

  final dioClient = getIt<DioClient>();

  Future<EverydayPicture> getEverydayPicture() async {
    try {
      final response = await dioClient.get('planetary/apod');

      return response as EverydayPicture;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
