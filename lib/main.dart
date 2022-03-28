import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genecar/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyBPz6Bnyyg1HP69XffzuCdICwMGpJWS2E4',
          appId: '1:1089087912266:web:4519a4193b8999517429b3',
          messagingSenderId: '1089087912266',
          projectId: 'genecar-bb3ea',
          storageBucket: 'genecar-bb3ea.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: HomePage(),
    ),
  );
}
