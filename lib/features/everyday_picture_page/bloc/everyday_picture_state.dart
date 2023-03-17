import 'package:fitness_app/core/models/everyday_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'everyday_picture_state.freezed.dart';
// part of 'everyday_picture_bloc.dart';

@freezed
abstract class EverydayPictureState with _$EverydayPictureState {
  const factory EverydayPictureState.initial() = EverydayPictureInitial;

  const factory EverydayPictureState.loading() = EverydayPictureLoading;

  const factory EverydayPictureState.success({
    required EverydayPicture everydayPictureData,
  }) = EverydayPictureSuccess;

  const factory EverydayPictureState.error({required String errorMessage}) =
      EverydayPictureError;
}
