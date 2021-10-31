import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/experience_model.dart';

import 'base_provider.dart';

class ExperienceProvider extends BaseProvider {
  ExperienceProvider()
      : super(
          reference: FirebaseFirestore.instance.collection('experiences'),
        );
  Future<List<ExperienceModel>> getExperiences() async {
    QuerySnapshot querySnapshot = await getCollection();

    List<ExperienceModel> allProjects = querySnapshot.docs
        .map(
          (doc) => ExperienceModel(
            companyName: doc['companyName'],
            position: doc['position'],
            year: doc['year'],
          ),
        )
        .toList();
    return allProjects;
  }
}
