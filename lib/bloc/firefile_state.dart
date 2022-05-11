part of 'firefile_bloc.dart';

@freezed
class FirefileState with _$FirefileState {
  const factory FirefileState.initial() = _Initial;
  const factory FirefileState.taskListUpdateSuccess(List<FirefileTask> tasks) =
      _TaskListUpdateSuccess;
  const factory FirefileState.taskUpdateSuccess(FirefileTask task, [int? hash]) =
      _TaskUpdateSuccess;
}
