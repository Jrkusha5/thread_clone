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
    apiKey: 'AIzaSyDJzyDfYsRZv7_fmS1QirNBIi_G_cLqVzU',
    appId: '1:703458951538:web:f8042373b28850382a1deb',
    messagingSenderId: '703458951538',
    projectId: 'thread-clone-b9b37',
    authDomain: 'thread-clone-b9b37.firebaseapp.com',
    storageBucket: 'thread-clone-b9b37.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACX0Dm5wXZwgPFgoLVj_1Lz43R_xVYfjo',
    appId: '1:703458951538:android:ec08ab16a1904a2f2a1deb',
    messagingSenderId: '703458951538',
    projectId: 'thread-clone-b9b37',
    storageBucket: 'thread-clone-b9b37.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2O2BP3QzliZCEkZZORaZqEjD_mMSJBCY',
    appId: '1:703458951538:ios:d84017ad1122b0452a1deb',
    messagingSenderId: '703458951538',
    projectId: 'thread-clone-b9b37',
    storageBucket: 'thread-clone-b9b37.appspot.com',
    iosBundleId: 'com.example.thread',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2O2BP3QzliZCEkZZORaZqEjD_mMSJBCY',
    appId: '1:703458951538:ios:d84017ad1122b0452a1deb',
    messagingSenderId: '703458951538',
    projectId: 'thread-clone-b9b37',
    storageBucket: 'thread-clone-b9b37.appspot.com',
    iosBundleId: 'com.example.thread',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDJzyDfYsRZv7_fmS1QirNBIi_G_cLqVzU',
    appId: '1:703458951538:web:ca1c35e18d7fc0b72a1deb',
    messagingSenderId: '703458951538',
    projectId: 'thread-clone-b9b37',
    authDomain: 'thread-clone-b9b37.firebaseapp.com',
    storageBucket: 'thread-clone-b9b37.appspot.com',
  );
}
