import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getApplicationTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static EdgeInsets getDefaultPadding() {
    return ScreenUtil().orientation == Orientation.portrait
        ? EdgeInsets.all(12.h)
        : EdgeInsets.all(8.w);
  }
}
