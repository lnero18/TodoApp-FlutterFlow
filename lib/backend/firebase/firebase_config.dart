import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCVWFaeUZa0BRHxZYXQ8bB6sjFXzOAbSGc",
            authDomain: "to-do-y4pr9y.firebaseapp.com",
            projectId: "to-do-y4pr9y",
            storageBucket: "to-do-y4pr9y.appspot.com",
            messagingSenderId: "303405969203",
            appId: "1:303405969203:web:05136240b7c1e3d8311846"));
  } else {
    await Firebase.initializeApp();
  }
}
