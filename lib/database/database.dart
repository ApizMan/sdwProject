import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});

  //collection reference
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String fullName, String email, String type) async {
    return await usersCollection.doc(uid).set({
      'fullName': fullName,
      'email': email,
      'type': type,
    });
  }

  Future updateAnonymous(String id, String type) async {
    return await usersCollection.doc(uid).set({
      'id': id,
      'type': type,
    });
  }

  Stream<QuerySnapshot> get userDetails {
    return usersCollection.snapshots();
  }
}
