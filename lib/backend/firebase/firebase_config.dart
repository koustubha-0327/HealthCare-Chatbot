import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDVe2Yw92QnfqGYfMAzxvr0Pv42cKNQG68",
            authDomain: "health-ai-66455.firebaseapp.com",
            projectId: "health-ai-66455",
            storageBucket: "health-ai-66455.appspot.com",
            messagingSenderId: "834963620340",
            appId: "1:834963620340:web:e8d57d9f6cf7667a84f9a1",
            measurementId: "G-DEC0FESPZD"));
  } else {
    await Firebase.initializeApp();
  }
}
