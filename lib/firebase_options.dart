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
    apiKey: 'AIzaSyBg5c2-uAhlquxcJJrpjYLvfs3P3tQBoq8',
    appId: '1:436978458949:web:531d357dbc4990022cde2c',
    messagingSenderId: '436978458949',
    projectId: 'authtrainingapp',
    authDomain: 'authtrainingapp.firebaseapp.com',
    storageBucket: 'authtrainingapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI8LF9VK1WkOSihdW8dDrLLsXBoR8C27E',
    appId: '1:436978458949:android:b8adb583a966118f2cde2c',
    messagingSenderId: '436978458949',
    projectId: 'authtrainingapp',
    storageBucket: 'authtrainingapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNLQ3L5l1mRjcgsY-qpVmSmaoF-79ShQs',
    appId: '1:436978458949:ios:6f56e8a476ff5ce02cde2c',
    messagingSenderId: '436978458949',
    projectId: 'authtrainingapp',
    storageBucket: 'authtrainingapp.appspot.com',
    iosClientId: '436978458949-2gndkicvbk6nbglivnsbrajrolmta2ss.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNLQ3L5l1mRjcgsY-qpVmSmaoF-79ShQs',
    appId: '1:436978458949:ios:a4dbda86cf00ebc92cde2c',
    messagingSenderId: '436978458949',
    projectId: 'authtrainingapp',
    storageBucket: 'authtrainingapp.appspot.com',
    iosClientId: '436978458949-a7p3b7q6r3511d55fmidn6ht928ko4m5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthApp.RunnerTests',
  );
}
