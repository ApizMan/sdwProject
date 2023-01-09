import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});

  //collection reference
  final userCollection = FirebaseFirestore.instance.collection('users');

  Future updateUserInfo(
    String fullName,
  ) async {
    return await userCollection.doc(uid).set({
      'fullName': fullName,
    });
  }

  //get user stream
  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }

  Future getCurrentUserData() async {
    try {
      DocumentSnapshot ds = await userCollection.doc(uid).get();
      String fullname = ds.get('fullName');
      return [fullname];
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
