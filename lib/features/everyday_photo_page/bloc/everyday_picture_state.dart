part of 'everyday_picture_bloc.dart';

// @freezed
abstract class EverydayPictureState {
  // const factory EverydayPictureState.initial() = _Initial;

  // const factory EverydayPictureState.loading() = _Loading;

  // const factory EverydayPictureState.success(EverydayPicture data) = _Success;

  // const factory EverydayPictureState.error({required String errorMessage}) =
  //     _Error;
}

class EverydayPictureInitial extends EverydayPictureState {}

class EverydayPictureLoading extends EverydayPictureState {}

class EverydayPictureSuccess extends EverydayPictureState {
  final EverydayPicture everydayPictureData;

  EverydayPictureSuccess({required this.everydayPictureData});

  List<Object> get props => [everydayPictureData];
}

class EverydayPictureError extends EverydayPictureState {
  final String errorMessage;

  EverydayPictureError({required this.errorMessage});
}
