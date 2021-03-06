// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBPz6Bnyyg1HP69XffzuCdICwMGpJWS2E4',
    appId: '1:1089087912266:web:4519a4193b8999517429b3',
    messagingSenderId: '1089087912266',
    projectId: 'genecar-bb3ea',
    authDomain: 'genecar-bb3ea.firebaseapp.com',
    storageBucket: 'genecar-bb3ea.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAw_PlNiGsf5ot7QYKqx9Pvb_AwOQFstKs',
    appId: '1:1089087912266:android:6c0b6b0f815daa817429b3',
    messagingSenderId: '1089087912266',
    projectId: 'genecar-bb3ea',
    storageBucket: 'genecar-bb3ea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaaPzXh0cOlBy7d4Q4nVfpJyEoyd7xEGg',
    appId: '1:1089087912266:ios:9adc27a9b8ba78ba7429b3',
    messagingSenderId: '1089087912266',
    projectId: 'genecar-bb3ea',
    storageBucket: 'genecar-bb3ea.appspot.com',
    iosClientId:
        '1089087912266-41qffqqdv1f55u7j1gm0qdfutsfkr4om.apps.googleusercontent.com',
    iosBundleId: 'com.example.genecar',
  );
}
