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
    apiKey: 'AIzaSyBvXRYxMth92DhRUBd6R5-kMZOa5gyL8XI',
    appId: '1:117877953613:web:f4c8760f1682de00c9f804',
    messagingSenderId: '117877953613',
    projectId: 'todo-app-ec5bd',
    authDomain: 'todo-app-ec5bd.firebaseapp.com',
    storageBucket: 'todo-app-ec5bd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7BPYL1bYFliGrUqz6TcCTft7xMBXAFKk',
    appId: '1:117877953613:android:c02251141d0b7a2bc9f804',
    messagingSenderId: '117877953613',
    projectId: 'todo-app-ec5bd',
    storageBucket: 'todo-app-ec5bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwhYBxnn4HzGrNyn_be_J6fxCYXPYPEMc',
    appId: '1:117877953613:ios:1c08fd257a67b6c3c9f804',
    messagingSenderId: '117877953613',
    projectId: 'todo-app-ec5bd',
    storageBucket: 'todo-app-ec5bd.appspot.com',
    iosClientId: '117877953613-ibhvnm5nqsr9uojaj748r8t7v8kkkkn9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwhYBxnn4HzGrNyn_be_J6fxCYXPYPEMc',
    appId: '1:117877953613:ios:1c08fd257a67b6c3c9f804',
    messagingSenderId: '117877953613',
    projectId: 'todo-app-ec5bd',
    storageBucket: 'todo-app-ec5bd.appspot.com',
    iosClientId: '117877953613-ibhvnm5nqsr9uojaj748r8t7v8kkkkn9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );
}