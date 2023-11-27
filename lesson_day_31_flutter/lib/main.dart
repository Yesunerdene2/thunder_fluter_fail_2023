import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_31_flutter/firebase_options.dart';
import 'package:lesson_day_31_flutter/screens/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(home: HomeScreen()));
}
