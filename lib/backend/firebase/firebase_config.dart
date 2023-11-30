import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3SsPBQVgm_jBfXQee-CiR5IFzD4UPHVE",
            authDomain: "chalo-edf77.firebaseapp.com",
            projectId: "chalo-edf77",
            storageBucket: "chalo-edf77.appspot.com",
            messagingSenderId: "581558694402",
            appId: "1:581558694402:web:348a54e844879f2c69ad1b"));
  } else {
    await Firebase.initializeApp();
  }
}
