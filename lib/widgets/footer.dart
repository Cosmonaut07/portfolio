import 'package:portfolio/app/app.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final List<AboutMeModel> aboutMe;
  const Footer({required this.aboutMe});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: MediaQuery.of(context).size.width > 600 ? 0.75 : 0.95,
      child: Container(
        height: 104,
        margin: EdgeInsets.only(top: 104.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  await canLaunch(aboutMe.first.contactAddress)
                      ? await launch(aboutMe.first.contactAddress)
                      : throw 'couldn\'t launch url';
                },
                child: Text(
                  'Get in touch',
                  style:
                      Theme.of(context).body.copyWith(color: kLINK, height: 1),
                ),
              ),
            ),
            Wrap(
              spacing: 17,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      await canLaunch(aboutMe.first.link1)
                          ? await launch(aboutMe.first.link1)
                          : throw 'couldn\'t launch url';
                    },
                    child: Icon(
                      Icons.mail,
                      color: kPRIMARY200,
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      await canLaunch(aboutMe.first.link2)
                          ? await launch(aboutMe.first.link2)
                          : throw 'couldn\'t launch url';
                    },
                    child: Icon(
                      Icons.ac_unit,
                      color: kPRIMARY200,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
