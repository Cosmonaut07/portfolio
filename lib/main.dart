import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/app_helper.dart';
import 'package:portfolio/pages/error_page.dart';
import 'package:portfolio/pages/init_page.dart';
import 'package:portfolio/pages/wrapper/wrapper_page.dart';
import 'app/app_view.dart';
import 'app/bloc/app_cubit.dart';
import 'app/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(),
      child: AppView(),
    );
  }
}
