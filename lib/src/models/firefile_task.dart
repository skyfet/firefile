import 'package:firebase_storage/firebase_storage.dart';
import 'package:firefile/firefile.dart';
import 'package:firefile/src/extensions/task_snapshot_extension.dart';

class FirefileTask {
  FirefileTask.fromUploadTask({
    required this.uploadTask,
    required void Function(FirefileTask task) onUpdate,
    this.visibleName,
  })  : fileName = uploadTask.snapshot.ref.name,
        progress = 0.0,
        state = TaskState.running {
    /// Listening to events
    uploadTask.snapshotEvents.listen(
      (TaskSnapshot taskSnapshot) async {
        if (taskSnapshot.state == TaskState.success) {
          downloadUrl = await uploadTask.snapshot.ref.getDownloadURL();
        }
        if (taskSnapshot.state == TaskState.running) {
          progress = taskSnapshot.progress;
        }
        state = taskSnapshot.state;
        onUpdate(this);
      },
      onError: (_) {
        state = uploadTask.snapshot.state;
        progress = uploadTask.snapshot.progress;
        onUpdate(this);
      },
    );
  }

  /// Firebase storage upload task.
  final UploadTask uploadTask;

  /// File name in Firebase storage.
  final String fileName;

  /// Name to be displayed in the task list.
  ///
  /// Use this [visibleName] when you want to provide an alternate
  /// file name in [Firefile.tileBuilder].
  final String? visibleName;

  double progress;

  /// State of this task:
  /// ```dart
  /// enum TaskState {
  ///   paused,
  ///   running,
  ///   success,
  ///   canceled,
  ///   error,
  /// }
  /// ```
  ///
  /// Prefer using this [state].
  /// Do not access to [uploadTask.state].
  TaskState state;

  /// Full file download url.
  /// ### Do not access this variable until this [state] has been [TaskState.success].
  late String downloadUrl;

  @override
  String toString() => '<$runtimeType ($fileName, $state)>';

  @override
  int get hashCode => Object.hash(uploadTask, state, progress);

  @override
  bool operator ==(Object other) {
    if (other is! FirefileTask) {
      return false;
    }
    return uploadTask == other.uploadTask && state == other.state && progress == other.progress;
  }
}
