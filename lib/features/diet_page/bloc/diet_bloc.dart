import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_event.dart';
part 'diet_state.dart';
part 'diet_bloc.freezed.dart';

class DietBloc extends Bloc<DietEvent, DietState> {
  DietBloc() : super(_Initial()) {
    on<DietEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
