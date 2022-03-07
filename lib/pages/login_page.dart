// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:genecar/pages/register.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
            ),
          ),
          backgroundColor: Colors.yellow[600],
          title: const Text(
            'Logowanie',
            style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Center(
              child: Image(
                width: 250.0,
                height: 250.0,
                image: AssetImage('assets/logo_car.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0),
                      labelText: 'Login',
                      hintText: 'Wprowadź swój login lub e-mail'),
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0),
                      labelText: 'Password',
                      hintText: 'Wprowadź swoje hasło'),
                ),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: TextButton(
              onPressed: () {},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Zaloguj',
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
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.yellow[600]!, Colors.yellow[700]!],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nie masz konta?',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w400),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    'Zarejestruj się!',
                    style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ]));
  }
}
