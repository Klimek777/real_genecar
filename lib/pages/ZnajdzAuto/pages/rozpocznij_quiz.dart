import 'package:flutter/material.dart';

class RozpocznijQuiz extends StatefulWidget {
  const RozpocznijQuiz({Key? key}) : super(key: key);

  @override
  State<RozpocznijQuiz> createState() => _RozpocznijQuizState();
}

class _RozpocznijQuizState extends State<RozpocznijQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.orange[300]!, Colors.yellow]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
            ),
          ),
          title: const Text(
            'Znajdź auto',
            style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Container(
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 2.0,
                        spreadRadius: 0.5,
                      ), //Bo
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.white, Colors.grey[50]!])),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Znajdź odpowiedni model do twoich potrzeb",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1,
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Image.asset('assets/biale_logo.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 2.0,
                        spreadRadius: 0.5,
                      ), //Bo
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Rozpocznij QuiZ",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 18))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 50),
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            0.5,
                            0.5,
                          ),
                          blurRadius: 2.0,
                          spreadRadius: 0.5,
                        ), //Bo
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Wiecej informacji",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 18))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
