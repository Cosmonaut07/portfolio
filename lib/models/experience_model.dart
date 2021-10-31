class ExperienceModel {
  String companyName;
  String position;
  int year;
  ExperienceModel(
      {required this.position, required this.companyName, required this.year});

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'position': position,
      'year': year,
    };
  }

  factory ExperienceModel.fromMap(Map<String, dynamic> map) {
    return ExperienceModel(
        year: map['year'] as int,
        position: map['position'] as String,
        companyName: map['desription'] as String);
  }
}
