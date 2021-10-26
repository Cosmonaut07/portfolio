import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/widgets/experience_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flex(
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
                'I\'m a developer from georgia, I am not really experienced but I like what I do, if you like it too, we can work together,' +
                    'I\'m a developer from georgia, I am not really experienced but I like what I do, if you like it too, we can work together' +
                    'I\'m a developer from georgia,' +
                    'I\'m a developer from georgia, I am not really experienced but I like what I do, if you like it too, we can work together,' +
                    'I\'m a developer from georgia, I am not really experienced but I like what I do, if you like it too, we can work together' +
                    'I\'m a developer from georgia,' +
                    'I am not really experienced but I like what I do, if you like it too, we can work together ',
                style: Theme.of(context).p,
                overflow: TextOverflow.visible,
                maxLines: 100,
              ),
            ),
          ],
        ),
        SizedBox(height: 80.w),
        Container(
          width: double.infinity,
          height: 600.w,
          color: kPRIMARY,
          child: Column(
            children: [Text('hi')],
          ),
        ),
        SizedBox(height: 80.w),
        Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: width > 800 ? Axis.horizontal : Axis.vertical,
          children: [
            Text(
              'Experience',
              style: Theme.of(context).h1,
            ),
            SizedBox(width: 80.w, height: 40.w),
            Container(
                width: width > 800 ? 600.w : double.infinity,
                child: Flex(
                  direction: width > 800 ? Axis.horizontal : Axis.vertical,
                  children: [
                    Wrap(
                      children: [
                        ExperienceCard(),
                        SizedBox(width: 80.w),
                        ExperienceCard(),
                        SizedBox(width: 80.w),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
