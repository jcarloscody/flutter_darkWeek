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
    apiKey: 'AIzaSyDaEs1MGolEaKMQ32mtSS6pqjBWmG8HlJo',
    appId: '1:727510895923:web:3572562b26c2051018c246',
    messagingSenderId: '727510895923',
    projectId: 'dr-5-timer-job',
    authDomain: 'dr-5-timer-job.firebaseapp.com',
    storageBucket: 'dr-5-timer-job.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8jw-ysUN4OkVMjKvvd23jV1bLV-hVLgk',
    appId: '1:727510895923:android:9f29382229be4eb418c246',
    messagingSenderId: '727510895923',
    projectId: 'dr-5-timer-job',
    storageBucket: 'dr-5-timer-job.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC3Azf9ThtkeyANiwH7x-sUHMDUNlZNcE',
    appId: '1:727510895923:ios:4eef6a6f19d9703d18c246',
    messagingSenderId: '727510895923',
    projectId: 'dr-5-timer-job',
    storageBucket: 'dr-5-timer-job.appspot.com',
    iosClientId: '727510895923-oeg1v5c77c1hho45se29hneh2qob1716.apps.googleusercontent.com',
    iosBundleId: 'com.example.jobTimer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAC3Azf9ThtkeyANiwH7x-sUHMDUNlZNcE',
    appId: '1:727510895923:ios:4eef6a6f19d9703d18c246',
    messagingSenderId: '727510895923',
    projectId: 'dr-5-timer-job',
    storageBucket: 'dr-5-timer-job.appspot.com',
    iosClientId: '727510895923-oeg1v5c77c1hho45se29hneh2qob1716.apps.googleusercontent.com',
    iosBundleId: 'com.example.jobTimer',
  );
}