import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBvTTfqwWkUJjyZ7GIveBsIFxwI1tRmsk8",
            authDomain: "gpninja-1c716.firebaseapp.com",
            projectId: "gpninja-1c716",
            storageBucket: "gpninja-1c716.appspot.com",
            messagingSenderId: "628331694436",
            appId: "1:628331694436:web:1932f5c0781171c11cd271",
            measurementId: "G-NRQXHVFS40"));
  } else {
    await Firebase.initializeApp();
  }
}
