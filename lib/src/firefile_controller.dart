part of 'firefile.dart';

/// Use [uploadFile] method for uploading files.
///
/// [tasks] - list of all tasks.
///
/// [allSuccess] - checks if all the tasks were completed successfully.
///
/// [allDone] - checks if all the tasks were executed with or without errors.
///
/// ### Do not use the `UploadTask.cancel()` method directly to cancel the task.
/// - #### Instead, use this [cancelTask] method.
/// - #### For other cases, you can refer to the available `UploadTask` methods.
class FirefileController {
  FirefileController({this.removeOnCancel = false})
      : tasks = [],
        _bloc = FirefileBloc();

  /// This flag affects whether the task will be removed from the task list
  /// if the task is canceled by this [cancelTask] method.
  final bool removeOnCancel;

  final List<FirefileTask> tasks;

  final FirefileBloc _bloc;

  /// You can upload file using [File] or [Uint8List] byte array.
  /// ## If you upload file using [File]:
  /// - ### provide only [file] argument.
  ///
  /// ## If you upload file using [Uint8List]:
  /// - ### specify [data] and [childPath] (which is used as the filename) arguments.
  UploadTask uploadFile({
    File? file,
    Uint8List? data,
    String? childPath,
    SettableMetadata? metadata,
    String? refPath,
  }) {
    assert(file != null || data != null, 'file OR data must be provided');
    assert(!(file != null && data != null), 'file OR data must be provided');
    assert(data == null || childPath != null, 'then data is provided, specify the childPath');
    var storageRef = FirebaseStorage.instance.ref(refPath);

    if (childPath != null) {
      storageRef = storageRef.child(childPath);
    }

    late UploadTask uploadTask;
    if (file != null) {
      uploadTask = storageRef.putFile(file, metadata);
    } else if (data != null) {
      uploadTask = storageRef.putData(data, metadata);
    }

    final task = FirefileTask.fromUploadTask(
      uploadTask: uploadTask,
      onUpdate: (task) => _bloc.add(FirefileEvent.updateTask(task)),
    );

    tasks.add(task);

    _bloc.add(FirefileEvent.updateTaskList(tasks));

    return uploadTask;
  }

  /// If [removeOnCancel] argument is provided,
  /// [FirefileController.removeOnCancel] will be ignored for this task.
  /// Else affects by [FirefileController.removeOnCancel].
  void cancelTask(FirefileTask task, {bool? removeOnCancel}) async {
    await task.uploadTask.cancel();
    if (removeOnCancel ?? this.removeOnCancel) {
      tasks.removeWhere(
        (t) => t.uploadTask.snapshot.ref.fullPath == task.uploadTask.snapshot.ref.fullPath,
      );
    }

    _bloc.add(FirefileEvent.updateTaskList(tasks));
  }

  bool get allSuccess => tasks.every((task) => task.state == TaskState.success);
  bool get allDone => tasks.every(
        (task) => task.state != TaskState.paused || task.state != TaskState.running,
      );
}
