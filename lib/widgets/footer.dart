import 'package:portfolio/app/app.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.w,
      margin: EdgeInsets.only(top: 104.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in touch',
            style: Theme.of(context).body.copyWith(color: kLINK, height: 1),
          ),
          Wrap(
            spacing: 17,
            children: [
              Icon(Icons.mail, color: kPRIMARY200),
              Icon(
                Icons.verified_user,
                color: kPRIMARY200,
              ),
            ],
          )
        ],
      ),
    );
  }
}
