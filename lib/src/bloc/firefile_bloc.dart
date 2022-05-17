import 'package:bloc/bloc.dart';
import 'package:firefile/firefile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firefile_event.dart';
part 'firefile_state.dart';
part 'firefile_bloc.freezed.dart';

class FirefileBloc extends Bloc<FirefileEvent, FirefileState> {
  FirefileBloc() : super(const FirefileState.initial()) {
    on<_UpdateTask>(_updateTask);
    on<_UpdateTaskList>(_updateTaskList);
  }

  void _updateTask(_UpdateTask event, Emitter<FirefileState> emit) {
    emit(FirefileState.taskUpdateSuccess(event.task, event.eventId));
  }

  void _updateTaskList(_UpdateTaskList event, Emitter<FirefileState> emit) =>
      emit(FirefileState.taskListUpdateSuccess(event.taskList, event.eventId));
}
