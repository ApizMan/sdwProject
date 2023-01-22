import 'package:auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fkaa_donation/database/Model/user_model.dart';
import 'package:fkaa_donation/database/database.dart';
import 'package:flutter/cupertino.dart';

class UserController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController email;
  TextEditingController password;

  UserController({required this.email, required this.password});

  //create user obj based on FirebaseUser
  UserModel? _userFromFirebaseUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Future signIn() async {
    UserCredential result = await _auth.signInWithEmailAndPassword(
      email: email.text.trim(),
      password: password.text.trim(),
    );
    User? user = result.user;

    //create a new document for the user with the uid
    await DatabaseService(uid: user!.uid)
        .updateUserData('Staff', 'staff@ump.edu.my', 'Staff');
    return _userFromFirebaseUser(user);
  }
}
