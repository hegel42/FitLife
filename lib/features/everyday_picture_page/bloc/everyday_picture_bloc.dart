import 'package:fitness_app/features/everyday_picture_page/bloc/everyday_picture_state.dart';
import 'package:fitness_app/features/everyday_picture_page/data_source/everyday_picture_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'everyday_picture_event.dart';

class EverydayPictureBloc
    extends Bloc<EverydayPictureEvent, EverydayPictureState> {
  EverydayPictureBloc(this.repo) : super(const EverydayPictureState.initial()) {
    on<EverydayPictureEvent>((event, emit) async {
      emit(const EverydayPictureState.loading());

      try {
        final response = await repo.getEverydayPicture();
        emit(
          EverydayPictureState.success(
            everydayPictureData: response,
          ),
        );
      } catch (e) {
        emit(EverydayPictureState.error(errorMessage: e.toString()));
      }
    });
  }

  final EverydayPictureRepo repo;
}
