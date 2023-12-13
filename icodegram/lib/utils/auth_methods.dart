import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:icodegram/utils/storage_methods.dart';
import 'package:icodegram/models/user.dart' as model;
import 'package:icodegram/utils/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  //sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String result = 'Some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        String img = 'assets/images/profile.png';
        String path = img.substring(img.indexOf("/") + 1, img.lastIndexOf("/"));

        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        ByteData data = await rootBundle.load(img);

        Uint8List imageData = data.buffer.asUint8List();
        String photoUrl =
            await StorageMethods().uploadImageToStorage(path, imageData, false);

        model.User user = model.User(
            name: username,
            email: email,
            uid: credential.user!.uid,
            bio: bio,
            photoUrl: photoUrl,
            followers: [],
            following: []);

        _fireStore
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());

        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _fireStore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(documentSnapshot);
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = "Some Error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        result = "Success";
      }
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }

  Future<void> sighOut() async {
    await _auth.signOut();
  }
}
