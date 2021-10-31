import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseProvider {
  CollectionReference reference;
  BaseProvider({
    required this.reference,
  });

  Future getCollection() async {
    return await reference.get();
  }

  Future getDocument(String documentName) async {
    return await reference.doc(documentName).get();
  }
}
