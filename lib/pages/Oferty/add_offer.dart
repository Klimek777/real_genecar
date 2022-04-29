import 'package:flutter/material.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/dodatkowe_wyposazenie.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/podaj_cene.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/podaj_vin.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_czyzarejestrowany.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_kategoria.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_kolor.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_liczbemiejsc.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_nadwozie.dart';
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
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_stan.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_wersje.dart';

class AddOffer extends StatefulWidget {
  const AddOffer({Key? key}) : super(key: key);

  @override
  State<AddOffer> createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
  String dropdownValue = 'Wybierz';
  String dropdownValue1 = 'Wybierz';
  String username = "";
  bool isChecked = false;

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
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WybierzMarke(),
                            WybierzRok(),
                            WybierzIloscMiejsc(),
                            WybierzPaliwo(),
                            WybierzSkrzynie(),
                            WybierzStan(),
                            WybierzCzyZarejestrowany(),
                          ]),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WybierzModel(),
                          WybierzGeneracje(),
                          WybierzKategorie(),
                          WybierzKolor(),
                          WybierzNaped(),
                          WybierzWersje(),
                          WybierzNadwozie(),
                        ],
                      ),
                    )
                  ],
                ),
                PodajCene(),
                WybierzPrzebieg(),
                WybierzMoc(),
                WybierzPojemnosc(),
                PodajVin(),
                DodatkoweWyposazenie(),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                //   child: Center(
                //     child: Container(
                //       child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: RichText(
                //                   text: TextSpan(
                //                       text: "Dodatkowe wyposaenie",
                //                       style: TextStyle(
                //                           color: Colors.black,
                //                           fontFamily: 'Montserrat',
                //                           fontWeight: FontWeight.normal))),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                //               child: Icon(
                //                 Icons.add,
                //                 size: 25,
                //               ),
                //             ),
                //           ]),
                //       height: 50,
                //       width: MediaQuery.of(context).size.height * 0.4,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(Radius.circular(20)),
                //         color: Colors.grey[50],
                //         border: Border.all(
                //             style: BorderStyle.solid,
                //             color: Colors.yellow[600]!,
                //             width: 3.5),
                //       ),
                //     ),
                //   ),
                // ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: RichText(
                              text: TextSpan(
                                  text: " Dodaj zdjęcia",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0),
                      labelText: 'Opis',
                      hintText: 'Wprowadź opis swojego auta ',
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 5,
                    maxLines: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dodaj ogłoszenie',
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
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
