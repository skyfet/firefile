part of '../firefile.dart';

class FirefileTask {
  /// Create completed [FirefileTask].
  ///
  /// #### DO NOT ACCESS THIS [uploadTask] FIELD IF YOU ARE USING THIS CONSTRUCTOR.
  FirefileTask.success({
    required this.fileName,
    required this.downloadUrl,
    this.visibleName,
  })  : progress = 1,
        fullPath = downloadUrl,
        state = TaskState.success;

  FirefileTask.fromUploadTask({
    required this.uploadTask,
    required void Function(FirefileTask task) onUpdate,
    this.visibleName,
  })  : fileName = uploadTask.snapshot.ref.name,
        fullPath = uploadTask.snapshot.ref.fullPath,
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
  ///
  /// #### DO NOT ACCESS THIS [uploadTask] WHEN YOU CREATE [FirefileTask]
  /// #### USING THIS [FirefileTask.success] CONSTRUCTOR.
  late final Task uploadTask;

  /// File name in Firebase storage (or file name you specified if task is custom).
  final String fileName;

  /// Full path in Firebase storage (or [downloadUrl] if task is custom).
  final String fullPath;

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
}
