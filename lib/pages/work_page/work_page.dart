import 'package:flutter/material.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/large_project.dart';
import 'package:portfolio/app/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/widgets/small_project.dart';

class WorkPage extends StatelessWidget {
  final List<ProjectModel> projects;
  final List<AboutMeModel> aboutMe;
  const WorkPage({required this.projects, required this.aboutMe});

  @override
  Widget build(BuildContext context) {
    final smalls = List<Widget>.generate(projects.length, (index) {
      if (projects.length == 1) {
        return SizedBox();
      }
      if (index > 0) {
        return SmallProject(
            title: projects[index].title,
            description: projects[index].description);
      } else
        return SizedBox();
    });
    double width = MediaQuery.of(context).size.width;
    return FractionallySizedBox(
      widthFactor: width > 600 ? 0.75 : 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: width > 800 ? 0.5 : 0.90,
            child: Text(
              aboutMe.first.shortAbout,
              style: Theme.of(context).h1,
            ),
          ),
          SizedBox(height: 80.h),
          width > 800
              ? LargeProject(
                  title: projects.first.title,
                  description: projects.first.description,
                )
              : SmallProject(
                  title: projects.first.title,
                  description: projects.first.description,
                ),
          SizedBox(height: 80.h),
          width < 800
              ? Flex(
                  direction: width > 800 ? Axis.horizontal : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...smalls.reversed,
                  ],
                )
              : Flex(
                  direction: width > 800 ? Axis.horizontal : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...smalls.reversed,
                  ],
                ),
        ],
      ),
    );
  }
}
