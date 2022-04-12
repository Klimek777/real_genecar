import 'package:flutter/material.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/podaj_cene.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_naped.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_moc.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_generacje.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_marke.dart';

import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_model.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_paliwo.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_pojemnosc.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_przebieg.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_rok.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_skrzynie.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_wersje.dart';

class AddOffer extends StatefulWidget {
  const AddOffer({Key? key}) : super(key: key);

  @override
  State<AddOffer> createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
  String dropdownValue = 'Wybierz';
  String dropdownValue1 = 'Wybierz';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
            ),
          ),
          backgroundColor: Colors.yellow[600],
          title: RichText(
              text: TextSpan(
            text: 'Dodaj swoje ogłoszenia',
            style: TextStyle(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Montserrat',
            ),
          )),
          actions: [],
        ),
        body: SafeArea(
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WybierzMarke(),
                            WybierzRok(),
                            WybierzPojemnosc(),
                            WybierzPaliwo(),
                            WybierzSkrzynie()
                          ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WybierzModel(),
                          WybierzGeneracje(),
                          WybierzMoc(),
                          WybierzNaped(),
                          WybierzWersje()
                        ],
                      )
                    ],
                  ),
                  PodajCene(),
                  WybierzPrzebieg(),
                ],
              ),
            ),
          ),
        ));
  }
}
