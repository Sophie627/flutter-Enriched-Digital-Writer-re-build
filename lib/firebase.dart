import 'package:cloud_firestore/cloud_firestore.dart';

void updateTemplateLastOpenedDate(String templateID) {
  FirebaseFirestore.instance.collection('templates')
      .doc(templateID)
      .update({'lastOpenedDate': DateTime.now()})
      .then((value) => print("Last Opened Date Updated"))
      .catchError((error) => print("Failed to update last opened date: $error"));
}
