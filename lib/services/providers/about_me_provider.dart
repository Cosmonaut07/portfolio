import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:portfolio/services/providers/base_provider.dart';

class AboutMeProvider extends BaseProvider {
  AboutMeProvider()
      : super(
          reference: FirebaseFirestore.instance.collection('about_me'),
        );

  Future<List<AboutMeModel>> getAboutMe() async {
    QuerySnapshot querySnapshot = await getCollection();

    List<AboutMeModel> allProjects = querySnapshot.docs
        .map(
          (doc) => AboutMeModel(
            contactAddress: doc['contactAddress'],
            link1: doc['link1'],
            link2: doc['link2'],
            longAbout: doc['longAbout'],
            personal: doc['personal'],
            shortAbout: doc['shortAbout'],
          ),
        )
        .toList();
    return allProjects;
  }
}
