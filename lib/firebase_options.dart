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
    apiKey: 'AIzaSyClcKU-eotdc8tHWMXdJh71LveF-EefliE',
    appId: '1:353811038159:web:9bbe97f27fcec4077f5cba',
    messagingSenderId: '353811038159',
    projectId: 'disney-plus-tejas',
    authDomain: 'disney-plus-tejas.firebaseapp.com',
    storageBucket: 'disney-plus-tejas.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATWWKNJhjyrIgvIkTCvFU2lSDEks1zAi0',
    appId: '1:353811038159:android:7e4c087031522f017f5cba',
    messagingSenderId: '353811038159',
    projectId: 'disney-plus-tejas',
    storageBucket: 'disney-plus-tejas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkilbwBwkEYB9PjH9mRN1kF_5pmXmef_g',
    appId: '1:353811038159:ios:521f51f5ba2ad34f7f5cba',
    messagingSenderId: '353811038159',
    projectId: 'disney-plus-tejas',
    storageBucket: 'disney-plus-tejas.appspot.com',
    iosClientId: '353811038159-6v2vc7ulvlfqhf8rshe8n6jrm2pg3kcg.apps.googleusercontent.com',
    iosBundleId: 'com.example.disneyPlusClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkilbwBwkEYB9PjH9mRN1kF_5pmXmef_g',
    appId: '1:353811038159:ios:521f51f5ba2ad34f7f5cba',
    messagingSenderId: '353811038159',
    projectId: 'disney-plus-tejas',
    storageBucket: 'disney-plus-tejas.appspot.com',
    iosClientId: '353811038159-6v2vc7ulvlfqhf8rshe8n6jrm2pg3kcg.apps.googleusercontent.com',
    iosBundleId: 'com.example.disneyPlusClone',
  );
}
