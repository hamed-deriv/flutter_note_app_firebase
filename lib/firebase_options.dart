import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDOmS9ntaSDXDnvsoGFHm2ZkHEyo_f6mio',
    appId: '1:614687590373:web:b5a1d6d54c47a44331510c',
    messagingSenderId: '614687590373',
    projectId: 'flutter-note-app-firebas-69b7d',
    authDomain: 'flutter-note-app-firebas-69b7d.firebaseapp.com',
    storageBucket: 'flutter-note-app-firebas-69b7d.appspot.com',
    measurementId: 'G-V2F4WYMPFJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-kpV4ffedsN0Ugd2Zjxq9UXBBIily65M',
    appId: '1:614687590373:android:330af11ee1a0d8a231510c',
    messagingSenderId: '614687590373',
    projectId: 'flutter-note-app-firebas-69b7d',
    storageBucket: 'flutter-note-app-firebas-69b7d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpU-ICCSm2kSZfyedpnh0OOnohNotuNsU',
    appId: '1:614687590373:ios:486cbe48cf95de1b31510c',
    messagingSenderId: '614687590373',
    projectId: 'flutter-note-app-firebas-69b7d',
    storageBucket: 'flutter-note-app-firebas-69b7d.appspot.com',
    iosClientId:
        '614687590373-2an37k9fvjto4s7dm4c1iinb0gkb7bd7.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterNoteAppFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpU-ICCSm2kSZfyedpnh0OOnohNotuNsU',
    appId: '1:614687590373:ios:486cbe48cf95de1b31510c',
    messagingSenderId: '614687590373',
    projectId: 'flutter-note-app-firebas-69b7d',
    storageBucket: 'flutter-note-app-firebas-69b7d.appspot.com',
    iosClientId:
        '614687590373-2an37k9fvjto4s7dm4c1iinb0gkb7bd7.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterNoteAppFirebase',
  );
}
