import 'package:dio/dio.dart';
import 'package:fitness_app/core/di/service_locator.dart';
import 'package:fitness_app/core/models/everyday_picture.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/core/network/dio_exceptions.dart';

abstract class IEverydayPictureApi {
  Future<EverydayPicture> getEverydayPicture();
}

class EverydayPictureApiImpl extends IEverydayPictureApi {
  // final IEverydayPictureApi everydayPictureApi;

  // EverydayPictureApiImpl(this.everydayPictureApi);

  final injector = getIt<DioClient>();

  @override
  Future<EverydayPicture> getEverydayPicture() async {
    try {
      final response = await injector.get('planetary/apod');

      return response as EverydayPicture;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
