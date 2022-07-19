import 'package:flutter/material.dart';

abstract class UIHelpers {
  static Size size(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double height(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    return (UIHelpers.size(context).height - reducedBy) / dividedBy;
  }

  static double width(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    return (UIHelpers.size(context).width - reducedBy) / dividedBy;
  }

  // static double horizontalScreenPadding(BuildContext context) {
  //   return EdgeInsets.symmetric(h);
  // }
}
