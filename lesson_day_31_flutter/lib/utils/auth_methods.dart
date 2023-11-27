import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:lesson_day_31_flutter/models/user.dart' as model;
import 'package:lesson_day_31_flutter/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String res = "Some error Occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty ||
          file != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        String photoUrl = await StorageMethods()
            .uploudImageToString('profilePics', file, false);

        model.User user = model.User(
          username: username,
          uid: cred.user!.uid,
          photoUrl: photoUrl,
          email: email,
          bio: bio,
          followers: [],
          following: [],
        );
        await _fireStore
            .collection("users")
            .doc(cred.user!.uid)
            .set(user.toJson());
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = "Some Error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = "success";
      }
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;
    print(currentUser);

    DocumentSnapshot documentSnapshot =
        await _fireStore.collection('users').doc(currentUser.uid).get();
    print('document ${documentSnapshot}');
    return model.User.fromSnap(documentSnapshot);
  }
}
