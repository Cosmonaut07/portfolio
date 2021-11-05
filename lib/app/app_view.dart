import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/app_helper.dart';
import 'package:portfolio/app/constants.dart';
import 'package:portfolio/models/theme_model.dart';
import 'package:portfolio/pages/error_page.dart';
import 'package:portfolio/pages/init_page.dart';
import 'package:portfolio/pages/wrapper/wrapper_page.dart';

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
  };
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(builder: (
        context,
        ThemeModel themeNotifier,
        child,
      ) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
          routes: appRoutes,
          title: 'Cosmonaut\'s portfolio',
          home: InitScreenUtils(
            child: WrapperPage(),
          ),
        );
      }),
    );
  }
}
