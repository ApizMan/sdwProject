import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});
  //Collection reference
  final CollectionReference databaseCollection =
      FirebaseFirestore.instance.collection('sdwDatabase');

  Future updateUserData(String sugar, String name, int strengrh) async {
    return await databaseCollection.doc(uid);
  }
}
