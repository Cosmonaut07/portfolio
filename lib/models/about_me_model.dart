class AboutMeModel {
  String shortAbout;
  String longAbout;
  String personal;
  String contactAddress;
  String link1;
  String link2;
  AboutMeModel({
    required this.contactAddress,
    required this.link1,
    required this.link2,
    required this.longAbout,
    required this.personal,
    required this.shortAbout,
  });

  Map<String, dynamic> toMap() {
    return {
      'shortAbout': shortAbout,
      'longAbout': longAbout,
      'personal': personal,
      'contactAddress': contactAddress,
      'link1': link1,
      'link2': link2,
    };
  }

  factory AboutMeModel.fromMap(Map<String, dynamic> map) {
    return AboutMeModel(
      shortAbout: map['shortAbout'] as String,
      longAbout: map['longAbout'] as String,
      personal: map['personal'] as String,
      contactAddress: map['contactAddress'] as String,
      link1: map['link1'] as String,
      link2: map['link2'] as String,
    );
  }
}
