// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:genecar/pages/login_page.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          title: const Text(
            'Rejestracja',
            style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                    labelText: 'e-mail',
                    hintText: 'e-mail'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                    labelText: 'hasło ',
                    hintText: 'Podaj hasło'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                    labelText: 'Imię',
                    hintText: 'Podaj swoje imię'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                    labelText: 'Naziwsko',
                    hintText: 'Podaj swoje naziwsko'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),

                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                    labelText: 'Numer telefonu',
                    hintText: 'Numer telefonu'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Zarejestruj',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Masz juz konto?',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w400),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => login_page()));
                  },
                  child: Text(
                    'Zaloguj się!',
                    style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.bold),
                  ))
            ])
          ],
        ));
  }
}
