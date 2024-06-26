// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBnIcwPoDTr7y3BC01dCQIt924gN29cxUk',
    appId: '1:542376057810:web:ca9dac2d504c5d1113860b',
    messagingSenderId: '542376057810',
    projectId: 'vodik-ba669',
    authDomain: 'vodik-ba669.firebaseapp.com',
    storageBucket: 'vodik-ba669.appspot.com',
    measurementId: 'G-WY7VX830FS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCT42ofyN2BGNmqVUX429NR4mDBRSlIcJc',
    appId: '1:542376057810:android:ff5ff2a73b9aa74f13860b',
    messagingSenderId: '542376057810',
    projectId: 'vodik-ba669',
    storageBucket: 'vodik-ba669.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzNfdip-3hfBpPpqQ74Uys4BummQ-k8N8',
    appId: '1:542376057810:ios:4ef3532373e509c413860b',
    messagingSenderId: '542376057810',
    projectId: 'vodik-ba669',
    storageBucket: 'vodik-ba669.appspot.com',
    iosBundleId: 'com.example.vodikVodik',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzNfdip-3hfBpPpqQ74Uys4BummQ-k8N8',
    appId: '1:542376057810:ios:4ef3532373e509c413860b',
    messagingSenderId: '542376057810',
    projectId: 'vodik-ba669',
    storageBucket: 'vodik-ba669.appspot.com',
    iosBundleId: 'com.example.vodikVodik',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBnIcwPoDTr7y3BC01dCQIt924gN29cxUk',
    appId: '1:542376057810:web:513b23ccbccdef2413860b',
    messagingSenderId: '542376057810',
    projectId: 'vodik-ba669',
    authDomain: 'vodik-ba669.firebaseapp.com',
    storageBucket: 'vodik-ba669.appspot.com',
    measurementId: 'G-08KH1VCPSY',
  );
}
