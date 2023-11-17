import 'package:flutter/material.dart';
import 'package:lesson_day_27_flutter/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  print('It is succesfully initialized');
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}

