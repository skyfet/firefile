library firefile;

import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:firefile/bloc/firefile_bloc.dart';
import 'package:firefile/models/firefile_task.dart';
import 'package:firefile/widgets/firefile_builder.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'firefile_controller.dart';

/// `Firefile` uses `ListView.builder` to display a list of downloads.
/// You can control all `ListView` parameters with `Firefile` arguments.
///
/// #### NOTES:
/// - use `controller` to provide `FirefileController`;
/// - use `tileBuilder` instead of `ListView.itemBuilder`;
/// - use `scrollController` instead of `ListView.controller`.
class Firefile extends StatelessWidget {
  const Firefile({
    required this.controller,
    required this.tileBuilder,
    this.scrollController,
    this.primary,
    this.physics,
    this.padding,
    this.itemExtent,
    this.prototypeItem,
    this.cacheExtent,
    this.semanticChildCount,
    this.restorationId,
    this.reverse = false,
    this.shrinkWrap = false,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.scrollDirection = Axis.vertical,
    this.clipBehavior = Clip.hardEdge,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    Key? key,
  }) : super(key: key);

  final FirefileController controller;
  final Widget Function(FirefileTask task) tileBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? scrollController;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final double? itemExtent;
  final Widget? prototypeItem;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller._bloc,
      child: FirefileBuilder(
        controller: controller,
        tileBuilder: tileBuilder,
        scrollDirection: scrollDirection,
        reverse: reverse,
        scrollController: scrollController,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
      ),
    );
  }
}
