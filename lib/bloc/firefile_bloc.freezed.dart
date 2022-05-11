// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firefile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirefileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirefileTask task) updateTask,
    required TResult Function(List<FirefileTask> taskList) updateTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_UpdateTaskList value) updateTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirefileEventCopyWith<$Res> {
  factory $FirefileEventCopyWith(
          FirefileEvent value, $Res Function(FirefileEvent) then) =
      _$FirefileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirefileEventCopyWithImpl<$Res>
    implements $FirefileEventCopyWith<$Res> {
  _$FirefileEventCopyWithImpl(this._value, this._then);

  final FirefileEvent _value;
  // ignore: unused_field
  final $Res Function(FirefileEvent) _then;
}

/// @nodoc
abstract class _$$_UpdateTaskCopyWith<$Res> {
  factory _$$_UpdateTaskCopyWith(
          _$_UpdateTask value, $Res Function(_$_UpdateTask) then) =
      __$$_UpdateTaskCopyWithImpl<$Res>;
  $Res call({FirefileTask task});
}

/// @nodoc
class __$$_UpdateTaskCopyWithImpl<$Res>
    extends _$FirefileEventCopyWithImpl<$Res>
    implements _$$_UpdateTaskCopyWith<$Res> {
  __$$_UpdateTaskCopyWithImpl(
      _$_UpdateTask _value, $Res Function(_$_UpdateTask) _then)
      : super(_value, (v) => _then(v as _$_UpdateTask));

  @override
  _$_UpdateTask get _value => super._value as _$_UpdateTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_UpdateTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as FirefileTask,
    ));
  }
}

/// @nodoc

class _$_UpdateTask implements _UpdateTask {
  const _$_UpdateTask(this.task);

  @override
  final FirefileTask task;

  @override
  String toString() {
    return 'FirefileEvent.updateTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      __$$_UpdateTaskCopyWithImpl<_$_UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirefileTask task) updateTask,
    required TResult Function(List<FirefileTask> taskList) updateTaskList,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_UpdateTaskList value) updateTaskList,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements FirefileEvent {
  const factory _UpdateTask(final FirefileTask task) = _$_UpdateTask;

  FirefileTask get task => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTaskListCopyWith<$Res> {
  factory _$$_UpdateTaskListCopyWith(
          _$_UpdateTaskList value, $Res Function(_$_UpdateTaskList) then) =
      __$$_UpdateTaskListCopyWithImpl<$Res>;
  $Res call({List<FirefileTask> taskList});
}

/// @nodoc
class __$$_UpdateTaskListCopyWithImpl<$Res>
    extends _$FirefileEventCopyWithImpl<$Res>
    implements _$$_UpdateTaskListCopyWith<$Res> {
  __$$_UpdateTaskListCopyWithImpl(
      _$_UpdateTaskList _value, $Res Function(_$_UpdateTaskList) _then)
      : super(_value, (v) => _then(v as _$_UpdateTaskList));

  @override
  _$_UpdateTaskList get _value => super._value as _$_UpdateTaskList;

  @override
  $Res call({
    Object? taskList = freezed,
  }) {
    return _then(_$_UpdateTaskList(
      taskList == freezed
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<FirefileTask>,
    ));
  }
}

/// @nodoc

class _$_UpdateTaskList implements _UpdateTaskList {
  const _$_UpdateTaskList(final List<FirefileTask> taskList)
      : _taskList = taskList;

  final List<FirefileTask> _taskList;
  @override
  List<FirefileTask> get taskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString() {
    return 'FirefileEvent.updateTaskList(taskList: $taskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTaskList &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTaskListCopyWith<_$_UpdateTaskList> get copyWith =>
      __$$_UpdateTaskListCopyWithImpl<_$_UpdateTaskList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirefileTask task) updateTask,
    required TResult Function(List<FirefileTask> taskList) updateTaskList,
  }) {
    return updateTaskList(taskList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
  }) {
    return updateTaskList?.call(taskList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirefileTask task)? updateTask,
    TResult Function(List<FirefileTask> taskList)? updateTaskList,
    required TResult orElse(),
  }) {
    if (updateTaskList != null) {
      return updateTaskList(taskList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_UpdateTaskList value) updateTaskList,
  }) {
    return updateTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
  }) {
    return updateTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_UpdateTaskList value)? updateTaskList,
    required TResult orElse(),
  }) {
    if (updateTaskList != null) {
      return updateTaskList(this);
    }
    return orElse();
  }
}

abstract class _UpdateTaskList implements FirefileEvent {
  const factory _UpdateTaskList(final List<FirefileTask> taskList) =
      _$_UpdateTaskList;

  List<FirefileTask> get taskList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateTaskListCopyWith<_$_UpdateTaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirefileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FirefileTask> tasks) taskListUpdateSuccess,
    required TResult Function(FirefileTask task, int? hash) taskUpdateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskListUpdateSuccess value)
        taskListUpdateSuccess,
    required TResult Function(_TaskUpdateSuccess value) taskUpdateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirefileStateCopyWith<$Res> {
  factory $FirefileStateCopyWith(
          FirefileState value, $Res Function(FirefileState) then) =
      _$FirefileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirefileStateCopyWithImpl<$Res>
    implements $FirefileStateCopyWith<$Res> {
  _$FirefileStateCopyWithImpl(this._value, this._then);

  final FirefileState _value;
  // ignore: unused_field
  final $Res Function(FirefileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FirefileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FirefileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FirefileTask> tasks) taskListUpdateSuccess,
    required TResult Function(FirefileTask task, int? hash) taskUpdateSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskListUpdateSuccess value)
        taskListUpdateSuccess,
    required TResult Function(_TaskUpdateSuccess value) taskUpdateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FirefileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_TaskListUpdateSuccessCopyWith<$Res> {
  factory _$$_TaskListUpdateSuccessCopyWith(_$_TaskListUpdateSuccess value,
          $Res Function(_$_TaskListUpdateSuccess) then) =
      __$$_TaskListUpdateSuccessCopyWithImpl<$Res>;
  $Res call({List<FirefileTask> tasks});
}

/// @nodoc
class __$$_TaskListUpdateSuccessCopyWithImpl<$Res>
    extends _$FirefileStateCopyWithImpl<$Res>
    implements _$$_TaskListUpdateSuccessCopyWith<$Res> {
  __$$_TaskListUpdateSuccessCopyWithImpl(_$_TaskListUpdateSuccess _value,
      $Res Function(_$_TaskListUpdateSuccess) _then)
      : super(_value, (v) => _then(v as _$_TaskListUpdateSuccess));

  @override
  _$_TaskListUpdateSuccess get _value =>
      super._value as _$_TaskListUpdateSuccess;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$_TaskListUpdateSuccess(
      tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<FirefileTask>,
    ));
  }
}

/// @nodoc

class _$_TaskListUpdateSuccess implements _TaskListUpdateSuccess {
  const _$_TaskListUpdateSuccess(final List<FirefileTask> tasks)
      : _tasks = tasks;

  final List<FirefileTask> _tasks;
  @override
  List<FirefileTask> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'FirefileState.taskListUpdateSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListUpdateSuccess &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_TaskListUpdateSuccessCopyWith<_$_TaskListUpdateSuccess> get copyWith =>
      __$$_TaskListUpdateSuccessCopyWithImpl<_$_TaskListUpdateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FirefileTask> tasks) taskListUpdateSuccess,
    required TResult Function(FirefileTask task, int? hash) taskUpdateSuccess,
  }) {
    return taskListUpdateSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
  }) {
    return taskListUpdateSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (taskListUpdateSuccess != null) {
      return taskListUpdateSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskListUpdateSuccess value)
        taskListUpdateSuccess,
    required TResult Function(_TaskUpdateSuccess value) taskUpdateSuccess,
  }) {
    return taskListUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
  }) {
    return taskListUpdateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (taskListUpdateSuccess != null) {
      return taskListUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class _TaskListUpdateSuccess implements FirefileState {
  const factory _TaskListUpdateSuccess(final List<FirefileTask> tasks) =
      _$_TaskListUpdateSuccess;

  List<FirefileTask> get tasks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TaskListUpdateSuccessCopyWith<_$_TaskListUpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TaskUpdateSuccessCopyWith<$Res> {
  factory _$$_TaskUpdateSuccessCopyWith(_$_TaskUpdateSuccess value,
          $Res Function(_$_TaskUpdateSuccess) then) =
      __$$_TaskUpdateSuccessCopyWithImpl<$Res>;
  $Res call({FirefileTask task, int? hash});
}

/// @nodoc
class __$$_TaskUpdateSuccessCopyWithImpl<$Res>
    extends _$FirefileStateCopyWithImpl<$Res>
    implements _$$_TaskUpdateSuccessCopyWith<$Res> {
  __$$_TaskUpdateSuccessCopyWithImpl(
      _$_TaskUpdateSuccess _value, $Res Function(_$_TaskUpdateSuccess) _then)
      : super(_value, (v) => _then(v as _$_TaskUpdateSuccess));

  @override
  _$_TaskUpdateSuccess get _value => super._value as _$_TaskUpdateSuccess;

  @override
  $Res call({
    Object? task = freezed,
    Object? hash = freezed,
  }) {
    return _then(_$_TaskUpdateSuccess(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as FirefileTask,
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TaskUpdateSuccess implements _TaskUpdateSuccess {
  const _$_TaskUpdateSuccess(this.task, [this.hash]);

  @override
  final FirefileTask task;
  @override
  final int? hash;

  @override
  String toString() {
    return 'FirefileState.taskUpdateSuccess(task: $task, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskUpdateSuccess &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$$_TaskUpdateSuccessCopyWith<_$_TaskUpdateSuccess> get copyWith =>
      __$$_TaskUpdateSuccessCopyWithImpl<_$_TaskUpdateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FirefileTask> tasks) taskListUpdateSuccess,
    required TResult Function(FirefileTask task, int? hash) taskUpdateSuccess,
  }) {
    return taskUpdateSuccess(task, hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
  }) {
    return taskUpdateSuccess?.call(task, hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FirefileTask> tasks)? taskListUpdateSuccess,
    TResult Function(FirefileTask task, int? hash)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (taskUpdateSuccess != null) {
      return taskUpdateSuccess(task, hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskListUpdateSuccess value)
        taskListUpdateSuccess,
    required TResult Function(_TaskUpdateSuccess value) taskUpdateSuccess,
  }) {
    return taskUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
  }) {
    return taskUpdateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskListUpdateSuccess value)? taskListUpdateSuccess,
    TResult Function(_TaskUpdateSuccess value)? taskUpdateSuccess,
    required TResult orElse(),
  }) {
    if (taskUpdateSuccess != null) {
      return taskUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class _TaskUpdateSuccess implements FirefileState {
  const factory _TaskUpdateSuccess(final FirefileTask task, [final int? hash]) =
      _$_TaskUpdateSuccess;

  FirefileTask get task => throw _privateConstructorUsedError;
  int? get hash => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TaskUpdateSuccessCopyWith<_$_TaskUpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
