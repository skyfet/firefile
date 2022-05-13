import 'package:firefile/src/bloc/firefile_bloc.dart';
import 'package:firefile/src/firefile.dart';
import 'package:firefile/src/models/firefile_task.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirefileBuilder extends StatelessWidget {
  const FirefileBuilder({
    required this.placeholder,
    required this.controller,
    required this.tileBuilder,
    required this.scrollDirection,
    required this.reverse,
    required this.scrollController,
    required this.primary,
    required this.physics,
    required this.shrinkWrap,
    required this.padding,
    required this.cacheExtent,
    required this.semanticChildCount,
    required this.dragStartBehavior,
    required this.keyboardDismissBehavior,
    required this.restorationId,
    required this.clipBehavior,
    required this.addAutomaticKeepAlives,
    required this.addRepaintBoundaries,
    required this.addSemanticIndexes,
    required this.itemExtent,
    required this.prototypeItem,
    Key? key,
  }) : super(key: key);

  //* Firefile
  final FirefileController controller;
  final Widget Function(FirefileTask task) tileBuilder;
  final Widget? placeholder;

  //* ListView.builder
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? scrollController;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final double? cacheExtent;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? itemExtent;
  final Widget? prototypeItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirefileBloc, FirefileState>(
      buildWhen: (_, state) => state.maybeMap(
        taskListUpdateSuccess: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        taskListUpdateSuccess: (state) {
          final tasks = state.tasks;

          if (tasks.isEmpty && placeholder != null) {
            return placeholder!;
          }

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final currentTask = controller.tasks[index];

              return BlocBuilder<FirefileBloc, FirefileState>(
                buildWhen: (_, state) => state.maybeMap(
                  taskUpdateSuccess: (state) => state.task.uploadTask == currentTask.uploadTask,
                  orElse: () => false,
                ),
                builder: (context, state) => state.maybeMap(
                  taskUpdateSuccess: (state) => tileBuilder(
                    state.task.uploadTask == currentTask.uploadTask ? state.task : currentTask,
                  ),
                  orElse: () => const SizedBox(),
                ),
              );
            },
            scrollDirection: scrollDirection,
            reverse: reverse,
            controller: scrollController,
            primary: primary,
            physics: physics,
            shrinkWrap: shrinkWrap,
            padding: padding,
            cacheExtent: cacheExtent,
            semanticChildCount: semanticChildCount ?? tasks.length,
            dragStartBehavior: dragStartBehavior,
            keyboardDismissBehavior: keyboardDismissBehavior,
            restorationId: restorationId,
            clipBehavior: clipBehavior,
            addAutomaticKeepAlives: addAutomaticKeepAlives,
            addRepaintBoundaries: addRepaintBoundaries,
            addSemanticIndexes: addSemanticIndexes,
            itemExtent: itemExtent,
            prototypeItem: prototypeItem,
          );
        },
      ),
    );
  }
}
