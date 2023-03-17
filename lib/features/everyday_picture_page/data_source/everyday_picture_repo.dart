import 'package:dio/dio.dart';
import 'package:fitness_app/core/models/everyday_picture.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/core/network/dio_exceptions.dart';

class EverydayPictureRepo {
  final DioClient dioClient;

  EverydayPictureRepo({required this.dioClient});

  Future<EverydayPicture> getEverydayPicture() async {
    try {
      final response = await dioClient.dio.get(
        'planetary/apod',
      );

      final dataJson = response.data;

      // final testData = dataJson;

      return EverydayPicture.fromMap(dataJson as Map<String, dynamic>);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
