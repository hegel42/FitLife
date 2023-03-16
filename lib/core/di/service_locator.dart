import 'package:dio/dio.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/core/network/api/everyday_picture_api.dart';
// import 'package:fitness_app/core/network/api/everyday_picture_api.dart';
// import 'package:fitness_app/features/everyday_photo_page/data_source/everyday_picture_repository.dart';

import 'package:fitness_app/core/network/repository/network_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());

  getIt.registerSingleton(DioClient(getIt<Dio>()));

  getIt.registerSingleton(NetworkRepository());
  getIt.registerSingleton(EverydayPictureApi(dioClient: getIt<DioClient>()));

  // getIt.registerSingleton(
  //   EverydayPictureRepository(getIt.get<EverydayPictureApi>()),
  // );
}
