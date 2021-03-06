import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/constants.dart';
import 'package:portfolio/cubits/data_cubit.dart';
import 'package:portfolio/models/theme_model.dart';
import 'package:portfolio/pages/about_page/about_page.dart';
import 'package:portfolio/pages/error_page.dart';
import 'package:portfolio/pages/work_page/work_page.dart';
import 'package:portfolio/widgets/footer.dart';

import '../init_page.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  bool pageIndex = true;
  void navigate() {
    setState(() {
      pageIndex = !pageIndex;
    });
  }

  void changeTheme() {}

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) {
        if (state is DataLoaded) {
          return Consumer<ThemeModel>(
              builder: (context, ThemeModel themeNotifier, child) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 80.h),
                      FractionallySizedBox(
                        widthFactor: width > 600 ? 0.75 : 0.95,
                        child: Row(
                          mainAxisAlignment: width < 200
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            Flex(
                              direction:
                                  width < 200 ? Axis.vertical : Axis.horizontal,
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      themeNotifier.isDark
                                          ? themeNotifier.isDark = false
                                          : themeNotifier.isDark = true;
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(20),
                                      child: SvgPicture.asset(
                                        themeNotifier.isDark
                                            ? 'assets/svg/lightbulb-dark.svg'
                                            : 'assets/svg/lightbulb-light.svg',
                                        height: 24,
                                        color: Theme.of(context).highlightColor,
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: navigate,
                                    child: Container(
                                      margin: EdgeInsets.all(20),
                                      child: Text(
                                        'Work',
                                        style: Theme.of(context)
                                            .headline
                                            .copyWith(
                                                color: pageIndex
                                                    ? Theme.of(context)
                                                        .highlightColor
                                                    : Theme.of(context)
                                                        .disabledColor),
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: navigate,
                                    child: Container(
                                      margin: width < 200
                                          ? EdgeInsets.all(20)
                                          : EdgeInsets.only(
                                              left: 20, top: 20, bottom: 20),
                                      child: Text(
                                        'About',
                                        style: Theme.of(context)
                                            .headline
                                            .copyWith(
                                                color: pageIndex
                                                    ? Theme.of(context)
                                                        .disabledColor
                                                    : Theme.of(context)
                                                        .highlightColor),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 80.h),
                      pageIndex
                          ? WorkPage(
                              projects: state.projects,
                              aboutMe: state.aboutMe,
                            )
                          : AboutPage(
                              aboutMe: state.aboutMe,
                              experience: state.experiences,
                            ),
                      Footer(
                        aboutMe: state.aboutMe,
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        }
        if (state is DataFailed) {
          return ErrorPage();
        } else {
          return InitPage();
        }
      },
    );
  }
}
