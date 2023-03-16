import 'package:fitness_app/core/di/service_locator.dart';
import 'package:fitness_app/core/models/everyday_picture.dart';
import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/features/everyday_photo_page/data_source/everyday_picture_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'everyday_picture_event.dart';
part 'everyday_picture_state.dart';

class EverydayPictureBloc
    extends Bloc<EverydayPictureEvent, EverydayPictureState> {
  EverydayPictureBloc() : super(EverydayPictureInitial()) {
    on<EverydayPictureEvent>((event, emit) async {
      emit(EverydayPictureLoading());

      try {
        final response = await injector.post('planetary/apod');
        emit(
          EverydayPictureSuccess(
            everydayPictureData: response.data as EverydayPicture,
          ),
        );
      } catch (e) {
        emit(EverydayPictureError(errorMessage: e.toString()));
      }
    });
  }

  // final IEverydayPictureApi remote;

  final injector = getIt<DioClient>();
}
