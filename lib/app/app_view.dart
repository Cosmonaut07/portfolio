import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app_helper.dart';
import 'package:portfolio/app/constants.dart';
import 'package:portfolio/pages/about_page/about_page.dart';
import 'package:portfolio/pages/error_page.dart';
import 'package:portfolio/pages/init_page.dart';
import 'package:portfolio/pages/work_page/work_page.dart';
import 'package:portfolio/pages/wrapper/wrapper_page.dart';

import 'bloc/app_cubit.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final appNavigatorKey = GlobalKey<NavigatorState>();
  BuildContext get appContext => appNavigatorKey.currentContext!;

  Map<String, WidgetBuilder> appRoutes = {
    AppRoutes.SPLASH: (_) => InitPage(),
    AppRoutes.ERROR: (_) => ErrorPage(),
    AppRoutes.WRAPPER: (_) => WrapperPage(),
    AppRoutes.WORK: (_) => WorkPage(),
    AppRoutes.ABOUT: (_) => AboutPage(),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      if (state is AppLoaded) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: appRoutes,
          title: 'Cosmonaut\'s portfolio',
          home: InitScreenUtils(
            child: WrapperPage(),
          ),
        );
      }
      if (state is AppFailed) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: appRoutes,
          title: 'Cosmonaut\'s portfolio',
          home: InitScreenUtils(
            child: ErrorPage(),
          ),
        );
      } else
        return InitPage();
    });
  }
}
