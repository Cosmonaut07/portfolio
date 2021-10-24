import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_page/work_page.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WorkPage(),
    );
  }
}
