import 'package:portfolio/app/app.dart';

class SmallProject extends StatelessWidget {
  const SmallProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 800 ? 349.w : double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              'https://images.unsplash.com/photo-1615859131861-052f0641a60e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1589&q=80',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 80.h),
          Text(
            'title',
            style: Theme.of(context).headline,
          ),
          Text(
            'descript',
            style: Theme.of(context).body,
          ),
        ],
      ),
    );
  }
}
