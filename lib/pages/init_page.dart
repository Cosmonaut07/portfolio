import 'package:flutter/material.dart';
import 'package:portfolio/app/styles/app_theme.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: kPRIMARY,
      ),
    );
  }
}
