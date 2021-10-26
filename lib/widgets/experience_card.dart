import 'package:portfolio/app/app.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Name'),
        Text('Description'),
        Text('Dates'),
      ],
    );
  }
}
