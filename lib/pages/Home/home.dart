//ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:genecar/pages/login_page.dart';
import 'package:genecar/pages/Blog/blog.dart';
import 'package:genecar/widgets/ofertowy_page_widget.dart';
import 'package:genecar/pages/ZnajdzAuto/search_car.dart';
import 'package:genecar/pages/Oferty/oferty.dart';
import 'package:genecar/pages/Uslugi/uslugi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Center(
            child: Image(
              width: MediaQuery.of(context).size.height * 0.25,
              height: MediaQuery.of(context).size.height * 0.25,
              image: AssetImage('assets/logo_zmien.png'),
            ),
          ),
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'Get',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'New',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[600],
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'Car',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: TextButton(
                style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Search_car()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Znajdz Auto',
                          style: TextStyle(
                              color: Colors.grey[50],
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Blog()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Blog',
                          style: TextStyle(
                              color: Colors.grey[50],
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TesowyPage()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Oferty',
                          style: TextStyle(
                              color: Colors.grey[50],
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Uslugi()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Usługi',
                          style: TextStyle(
                            color: Colors.grey[50],
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: FirebaseAuth.instance.currentUser == null
                ? [
                    RichText(
                      text: TextSpan(
                        text: 'Masz juz konto?',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => login_page()));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Zaloguj!',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              color: Colors.yellow[600],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ]
                : [
                    RichText(
                      text: TextSpan(
                        text: 'Witaj',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => login_page()));
                      },
                      child: GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            text: 'Wyloguj się',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                color: Colors.yellow[600],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        onTap: FirebaseAuth.instance.signOut,
                      ),
                    ),
                  ],
          ),
        )
      ]),
    );
  }
}
