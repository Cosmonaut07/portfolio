import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/app/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: FractionallySizedBox(
            widthFactor: MediaQuery.of(context).size.width > 600 ? 0.75 : 0.95,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80.h),
                NavBar(),
                SizedBox(height: 80.h),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor:
                      MediaQuery.of(context).size.width > 600 ? 0.5 : 0.80,
                  child: Text(
                    'I’m George, ??? developer based in Georgia',
                    style: Theme.of(context).h1,
                  ),
                ),
                SizedBox(height: 80.h),
                Image.network(
                    'https://images.unsplash.com/photo-1593642532400-2682810df593?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1169&q=80')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
