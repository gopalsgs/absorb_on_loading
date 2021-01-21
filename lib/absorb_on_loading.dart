import 'package:flutter/material.dart';

import 'absorb_controller.dart';

export 'loading_button.dart';
export 'absorb_controller.dart';

typedef AbsorbOnLoadBuilder = Widget Function(
  BuildContext context,
  AbsorbController absorbController,
);

class AbsorbOnLoading extends StatelessWidget {
  final controller;
  final AbsorbOnLoadBuilder builder;

  const AbsorbOnLoading({
    Key key,
    @required this.builder,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) {
        return AbsorbPointer(
          absorbing: value,
          child: builder(context, controller),
        );
      },
    );
  }
}
