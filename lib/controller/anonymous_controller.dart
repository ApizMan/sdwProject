import 'package:auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fkaa_donation/database/Model/anonymous_model.dart';
import 'package:fkaa_donation/database/database.dart';

class AnonymousController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser
  AnonymousModel? _userFromFirebaseUser(User user) {
    return user != null ? AnonymousModel(uid: user.uid) : null;
  }

  //Sign In Anonymous
  Future signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;

      int id = 0;

      //create a new document for the user with the uid
      await DatabaseService(uid: user.uid)
          .updateAnonymous('${id + 1}', 'Anonymous');

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
