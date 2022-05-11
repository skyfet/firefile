import 'package:firefile/models/firefile_task.dart';
import 'package:flutter/widgets.dart';

class FirefileTileBuilder extends StatelessWidget {
  const FirefileTileBuilder({
    required this.task,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final FirefileTask task;
  final Widget Function(FirefileTask task) builder;

  @override
  Widget build(BuildContext context) {
    return builder(task);
  }
}
