import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InitScreenUtils extends StatelessWidget {
  final Widget child;

  InitScreenUtils({required this.child});

  void setOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void setStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
    );
  }

  @override
  Widget build(BuildContext context) {
    this.setOrientation();
    this.setStatusBarColor();
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        if (constraints.maxWidth != 0) {
          ScreenUtil.init(
            constraints,
            orientation: Orientation.portrait,
            designSize: Size(1440, 1659),
          );
        }
        return child;
      },
    );
  }
}
