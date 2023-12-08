import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/firebase_options.dart';
import 'package:icodegram/gramhome.dart';
import 'package:icodegram/screens/screen_layout.dart';

import 'icodegram.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(home: IcodeGram()));
}
