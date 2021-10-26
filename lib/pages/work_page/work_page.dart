import 'package:flutter/material.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/large_project.dart';
import 'package:portfolio/app/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/widgets/small_project.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FractionallySizedBox(
          alignment: Alignment.centerLeft,
          widthFactor: MediaQuery.of(context).size.width > 800 ? 0.5 : 0.90,
          child: Text(
            'I’m George, ??? developer based in Georgia',
            style: Theme.of(context).h1,
          ),
        ),
        SizedBox(height: 80.h),
        MediaQuery.of(context).size.width > 800
            ? LargeProject()
            : SmallProject(),
        SizedBox(height: 80.h),
        MediaQuery.of(context).size.width < 800
            ? Flex(
                direction: MediaQuery.of(context).size.width > 800
                    ? Axis.horizontal
                    : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallProject(),
                  SizedBox(height: 80.h),
                  SmallProject(),
                  SizedBox(height: 80.h),
                  SmallProject(),
                ],
              )
            : FittedBox(
                fit: BoxFit.cover,
                child: Flex(
                  direction: MediaQuery.of(context).size.width > 800
                      ? Axis.horizontal
                      : Axis.vertical,
                  children: [
                    SmallProject(),
                    SizedBox(width: 15.w, height: 80.h),
                    SmallProject(),
                    SizedBox(width: 15.w, height: 80.h),
                    SmallProject(),
                  ],
                ),
              ),
      ],
    );
  }
}
