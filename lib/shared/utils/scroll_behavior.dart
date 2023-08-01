import 'package:flutter/material.dart';

class ScrollBehaviorUtils extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return GlowingOverscrollIndicator(
      showTrailing: false,
      axisDirection: axisDirection,
      color: Colors.transparent,
      child: child,
    );
  }
}
