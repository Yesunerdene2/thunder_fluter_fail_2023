import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_day_29_flutter/sign_up.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: SignUp(),
  ));
}



