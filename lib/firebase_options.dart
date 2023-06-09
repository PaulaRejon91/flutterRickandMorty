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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCsaQKr11ykXv7wbLM0KzkAr_ySnT1-zNA',
    appId: '1:967149699741:web:0fb3fbb92b62d4b499ca74',
    messagingSenderId: '967149699741',
    projectId: 'flutterrickandmorty',
    authDomain: 'flutterrickandmorty.firebaseapp.com',
    storageBucket: 'flutterrickandmorty.appspot.com',
    measurementId: 'G-5TXR4LNQG5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCv80D_NhbxSNC2Ar_E9kmQ0Sdwvkf5fVs',
    appId: '1:967149699741:android:3b5bf21ec9ffb2b999ca74',
    messagingSenderId: '967149699741',
    projectId: 'flutterrickandmorty',
    storageBucket: 'flutterrickandmorty.appspot.com',
  );
}
