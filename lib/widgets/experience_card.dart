import 'package:portfolio/app/app.dart';

class ExperienceCard extends StatelessWidget {
  final int year;
  final String company;
  final String position;
  const ExperienceCard({
    required this.company,
    required this.position,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$year - today',
            style: Theme.of(context).body.copyWith(color: kPRIMARY900),
          ),
          SizedBox(height: 8),
          Text(
            company,
            style: Theme.of(context).body.copyWith(color: kLINK),
          ),
          SizedBox(height: 8),
          Text(
            position,
            style: Theme.of(context).body,
          ),
        ],
      ),
    );
  }
}
