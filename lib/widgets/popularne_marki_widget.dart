import 'package:flutter/material.dart';
import 'dart:ui';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

int pressed = 0;
List<String> marki = [
  'Audi',
  'BMW',
  'Fiat',
  'Ford',
  'Mercedes',
  'Opel',
  'Porsche',
  'Renault',
  'Skoda',
  'Toyota',
];

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              alignment: Alignment.center,
              height: 57,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemCount: marki.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          pressed = index;
                        });
                      },
                      child: Ink(
                        width: 120,
                        height: 50,
                        decoration: pressed == index
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.yellow[600]!,
                                    Colors.yellow[700]!
                                  ],
                                ),
                                boxShadow: [
                                    BoxShadow(
                                      color: Colors.yellow.withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: Offset(0, 45),
                                    )
                                  ])
                            : BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.white, Colors.grey[200]!],
                                ),
                                boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 40,
                                      offset: Offset(0, 45),
                                    )
                                  ]),
                        child: Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                  text: marki[index],
                                  style: pressed == index
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          letterSpacing: 2,
                                          fontFamily: 'Montserrat')
                                      : TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          fontFamily: 'Montserrat')),
                            )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
