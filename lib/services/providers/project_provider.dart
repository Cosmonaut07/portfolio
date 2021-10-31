import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/services/providers/base_provider.dart';

class ProjectProvider extends BaseProvider {
  ProjectProvider()
      : super(
          reference: FirebaseFirestore.instance.collection('projects'),
        );
  Future<List<ProjectModel>> getProjects() async {
    QuerySnapshot querySnapshot = await getCollection();

    List<ProjectModel> allProjects = querySnapshot.docs
        .map((doc) =>
            ProjectModel(description: doc['description'], title: doc['title']))
        .toList();
    return allProjects;
  }
}
