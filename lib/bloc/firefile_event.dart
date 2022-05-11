part of 'firefile_bloc.dart';

@freezed
class FirefileEvent with _$FirefileEvent {
  const factory FirefileEvent.updateTask(FirefileTask task) = _UpdateTask;
  const factory FirefileEvent.updateTaskList(List<FirefileTask> taskList) = _UpdateTaskList;
}
