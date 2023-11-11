import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcqF8jxyigFCUIsCJnzEIsmPQUvmkV1tg",
            authDomain: "ftc-group-eb1ae.firebaseapp.com",
            projectId: "ftc-group-eb1ae",
            storageBucket: "ftc-group-eb1ae.appspot.com",
            messagingSenderId: "458478253024",
            appId: "1:458478253024:web:fab692681696285bee3185",
            measurementId: "G-1B67FZNHGB"));
  } else {
    await Firebase.initializeApp();
  }
}
