import 'package:portfolio/app/app.dart';
import 'package:portfolio/app/styles/app_theme.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(20.w),
            // width: 91.w,
            // height: 69.w,
            child: Text(
              'Work',
              style: Theme.of(context).headline,
            ),
          ),
          Container(
            // width: 91.w,
            // height: 69.w,
            margin: EdgeInsets.all(20.w),

            child: Text(
              'Home',
              style: Theme.of(context).headline.copyWith(color: kPRIMARY400),
            ),
          )
        ],
      ),
    );
  }
}
