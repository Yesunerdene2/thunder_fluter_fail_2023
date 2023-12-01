// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA8fqLk812IbjYyjX5dJ-KssDc6rCX5Qtg',
    appId: '1:554322120898:web:a63f9fc168866671b66b5b',
    messagingSenderId: '554322120898',
    projectId: 'lesson-day-29',
    authDomain: 'lesson-day-29.firebaseapp.com',
    storageBucket: 'lesson-day-29.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNVsAN3qChXKJuRxNfRHGInPIdFue5EnE',
    appId: '1:554322120898:android:8ddba39674a4e463b66b5b',
    messagingSenderId: '554322120898',
    projectId: 'lesson-day-29',
    storageBucket: 'lesson-day-29.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdfmq39X0f1nqDOwJMNn-Asld6VFLSCgs',
    appId: '1:554322120898:ios:018b2beac36da3c0b66b5b',
    messagingSenderId: '554322120898',
    projectId: 'lesson-day-29',
    storageBucket: 'lesson-day-29.appspot.com',
    iosBundleId: 'com.example.lessonDay33Flutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdfmq39X0f1nqDOwJMNn-Asld6VFLSCgs',
    appId: '1:554322120898:ios:e671738d2e4d1185b66b5b',
    messagingSenderId: '554322120898',
    projectId: 'lesson-day-29',
    storageBucket: 'lesson-day-29.appspot.com',
    iosBundleId: 'com.example.lessonDay33Flutter.RunnerTests',
  );
}
