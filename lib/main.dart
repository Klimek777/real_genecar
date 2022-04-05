import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genecar/firebase_options.dart';
import 'package:genecar/pages/Oferty/add_offer.dart';
import 'package:genecar/pages/Home/home.dart';
import 'package:genecar/pages/Oferty/ulubione.dart';
import 'package:genecar/pages/login_page.dart';
import 'package:genecar/widgets/ofertowy_page_widget.dart';
import 'package:genecar/widgets/testowy_pasek.dart';

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
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return HomePage();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return const login_page();
          }),
    ),
  );
}
