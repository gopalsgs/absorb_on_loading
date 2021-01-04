import 'package:flutter/material.dart';

import 'absorb_controller.dart';

export 'loading_button.dart';
export 'absorb_controller.dart';

typedef AbsorbOnLoadBuilder = Widget Function(
  BuildContext context,
  AbsorbController absorbController,
  Widget child,
);

class AbsorbOnLoading extends StatelessWidget {
  final controller = AbsorbController();
  final AbsorbOnLoadBuilder builder;
  final Widget child;

  AbsorbOnLoading({
    Key key,
    @required this.builder,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) {
        return AbsorbPointer(
          absorbing: value,
          child: builder(context, controller, child),
        );
      },
    );
  }
}