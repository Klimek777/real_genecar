import 'package:flutter/material.dart';
import 'package:genecar/main.dart';

class OfertyCellWidget extends StatelessWidget {
  final String title;
  final String image;
  final String firma;
  final String model;
  final String cena;
  final String rok;
  final String przebieg;
  final Function() onClick;

  OfertyCellWidget(
      {required this.title,
      required this.image,
      required this.firma,
      required this.model,
      required this.cena,
      required this.rok,
      required this.przebieg,
      required this.onClick});
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey[100]!.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: Row(
          children: [
            Container(
              width: 180,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: cena,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                        text: TextSpan(
                      text: '$firma $model',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                    children: [
                              TextSpan(
                                text: "Rok : $rok  ",
                              ),
                              TextSpan(text: "  Przebieg: $przebieg")
                            ]))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                    children: [
                              TextSpan(
                                text: "$firma $model ",
                              ),
                              TextSpan(text: "      $firma $model")
                            ]))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.navigation,
                            color: Colors.yellow[700],
                            size: 17,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: RichText(
                              text: TextSpan(
                                  text: "Białogard",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.yellow[600]!,
                                      Colors.yellow[700]!
                                    ]),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: Colors.yellow[600]),
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            height: 30,
                            width: 50,
                            child: Container(
                              alignment: Alignment.center,
                              child: ClipRRect(child: Icon(Icons.call)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.yellow[600]!,
                                      Colors.yellow[700]!
                                    ]),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: Colors.yellow[600]),
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            height: 30,
                            width: 50,
                            child: Container(
                              alignment: Alignment.center,
                              child: ClipRRect(child: Icon(Icons.message)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          //TODO naprawic gesture detector
                          child: GestureDetector(
                            onTap: (() {
                              SetState() {
                                favourite = true;
                              }
                            }),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.yellow[600]!,
                                        Colors.yellow[700]!
                                      ]),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  color: Colors.yellow[600]),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              height: 30,
                              width: 50,
                              child: ClipRRect(
                                  child: (favourite)
                                      ? Icon(Icons.star_border_outlined)
                                      : Icon(Icons.star)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
