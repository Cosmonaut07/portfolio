import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/services/providers/experience_provider.dart';
import 'package:portfolio/widgets/experience_card.dart';

class AboutPage extends StatelessWidget {
  final List<AboutMeModel> aboutMe;
  final List<ExperienceModel> experience;
  AboutPage({required this.aboutMe, required this.experience});

  @override
  Widget build(BuildContext context) {
    final exp = List<Widget>.generate(experience.length, (index) {
      return ExperienceCard(
        year: experience[index].year,
        company: experience[index].companyName,
        position: experience[index].position,
      );
    });
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FractionallySizedBox(
          widthFactor: width > 600 ? 0.75 : 0.95,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: width > 800 ? Axis.horizontal : Axis.vertical,
            children: [
              Text(
                'Hello !',
                style: Theme.of(context).h1,
              ),
              SizedBox(width: 80.w, height: 40.w),
              Container(
                width: width > 800 ? 600.w : double.infinity,
                child: Text(
                  aboutMe.first.longAbout,
                  style: Theme.of(context).p,
                  overflow: TextOverflow.visible,
                  maxLines: 100,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 80.w),
        Container(
          width: double.infinity,
          height: 600,
          color: kPRIMARY,
          child: FractionallySizedBox(
            widthFactor: width > 600 ? 0.75 : 0.95,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 106, bottom: 44),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    'https://scontent.ftbs5-2.fna.fbcdn.net/v/t1.6435-9/241957674_4227069327412003_3941773359396454167_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeG02qlBSUyhW5HR_jN6CRl6yBk-_IjoTT_IGT78iOhNPxV-DJrRMoKAj0LvuEHM9uP7sc21qwLTdltSNNEfkjKQ&_nc_ohc=BsJBfJjhFAEAX9o7suk&tn=HxcH_ljmP2n6n3mN&_nc_ht=scontent.ftbs5-2.fna&oh=c20ee5bdd605d02bb3e0f78a09b3d5ba&oe=619FAEA4',
                    width: 144,
                    height: 144,
                  ),
                ),
                Text(
                  'Personal',
                  style: Theme.of(context).h2.copyWith(color: kWHITE),
                ),
                SizedBox(height: 24),
                Text(
                  aboutMe.first.personal,
                  style: Theme.of(context).p.copyWith(color: kWHITE),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 80.w),
        FractionallySizedBox(
          widthFactor: width > 600 ? 0.75 : 0.95,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: width > 800 ? Axis.horizontal : Axis.vertical,
            children: [
              Text(
                'Experience',
                style: Theme.of(context).h1,
              ),
              SizedBox(width: 80.w, height: 40),
              Container(
                width: width > 800 ? 600.w : double.infinity,
                child: Wrap(
                  spacing: 80.w,
                  runSpacing: 40,
                  children: [
                    ...exp,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
