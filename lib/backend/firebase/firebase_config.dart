import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCNFV3W2N67KdZ-GEpreLb1pJ7ZeuNloc",
            authDomain: "home-alligned-services-v2tq7s.firebaseapp.com",
            projectId: "home-alligned-services-v2tq7s",
            storageBucket: "home-alligned-services-v2tq7s.firebasestorage.app",
            messagingSenderId: "800005686862",
            appId: "1:800005686862:web:63e6502940349fcf42e51f"));
  } else {
    await Firebase.initializeApp();
  }
}
