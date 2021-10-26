import 'package:portfolio/app/app.dart';

class LargeProject extends StatelessWidget {
  const LargeProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 500.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 2.56,
              child: Image.network(
                'https://images.unsplash.com/photo-1615859131861-052f0641a60e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1589&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 80.h),
          Text(
            'Project Name',
            style: Theme.of(context).headline,
          ),
          Text(
            'Product descript',
            style: Theme.of(context).body,
          ),
        ],
      ),
    );
  }
}
