export 'package:bloc/bloc.dart';
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/material.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:provider/provider.dart';
export 'package:portfolio/app/styles/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Print for debugging
void dd(d) {
  if (true) print(d);
}

class CupertinoAppRoute<T> extends PageRoute<T>
    with CupertinoRouteTransitionMixin<T> {
  CupertinoAppRoute({
    required this.builder,
    required this.title,
    required RouteSettings settings,
    this.maintainState = true,
    bool fullscreenDialog = false,
  });
  // : assert(builder != null),
  // assert(maintainState != null),
  // assert(fullscreenDialog != null),
  // super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder builder;

  @override
  Color get barrierColor => Colors.red.withOpacity(0);

  @override
  final String title;

  @override
  Widget buildContent(BuildContext context) => builder(context);

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';

  @override
  bool canTransitionFrom(TransitionRoute<dynamic> previousRoute) => true;

  @override
  bool get barrierDismissible => true;

  @override
  bool get opaque => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 200);

  @override
  Duration get reverseTransitionDuration => Duration(milliseconds: 150);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return CupertinoUserInterfaceLevel(
      data: CupertinoUserInterfaceLevelData.base,
      child: Builder(builder: builder),
    );
  }
}
