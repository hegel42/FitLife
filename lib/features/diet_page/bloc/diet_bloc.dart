import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_bloc.freezed.dart';
part 'diet_event.dart';
part 'diet_state.dart';

class DietBloc extends Bloc<DietEvent, DietState> {
  DietBloc() : super(const _Initial()) {
    on<DietEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
