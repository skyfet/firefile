import 'package:firebase_storage/firebase_storage.dart';
import 'package:firefile/src/extensions/task_snapshot_extension.dart';

class FirefileTask {
  FirefileTask.fromUploadTask({
    required this.uploadTask,
    required void Function(FirefileTask task) onUpdate,
  })  : fileName = uploadTask.snapshot.ref.name,
        progress = 0.0,
        state = TaskState.running {
    // Listening to events
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

  final UploadTask uploadTask;
  final String fileName;

  double progress;

  /// Do not access to `UploadTask.state`.
  /// Prefer using this [state].
  TaskState state;

  /// Full file download url.
  /// ### Do not access this variable until the state of the task has been successfully.
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
