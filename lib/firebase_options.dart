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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1dVHGbnY18-sHJuwE1QdFSDnwyrFK4oY',
    appId: '1:870567145735:ios:34125fcf331c342436d5a2',
    messagingSenderId: '870567145735',
    projectId: 'expense-tracker-app-e1b0d',
    storageBucket: 'expense-tracker-app-e1b0d.firebasestorage.app',
    iosBundleId: 'astack.expenseTrackerApp',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAegwjzzA-t0QsskNxmf5s5gu0pdEQ8IRI',
    appId: '1:870567145735:android:6ca8a099e5ffb0d836d5a2',
    messagingSenderId: '870567145735',
    projectId: 'expense-tracker-app-e1b0d',
    storageBucket: 'expense-tracker-app-e1b0d.firebasestorage.app',
  );

}