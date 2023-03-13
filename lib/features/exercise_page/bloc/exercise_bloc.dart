import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';
part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseBloc() : super(_Initial()) {
    on<ExerciseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
