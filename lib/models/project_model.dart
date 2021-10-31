class ProjectModel {
  String title;
  String description;
  ProjectModel({required this.description, required this.title});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
        description: map['description'] as String,
        title: map['title'] as String);
  }
}
