import 'dart:io';
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
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddOffer extends StatefulWidget {
  const AddOffer({Key? key}) : super(key: key);
  @override
  State<AddOffer> createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
  String username = '';
  String phoneNum = '';
  String formattedPhoneNum = '';
  bool isChecked = false;
  bool change = false;

  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  void getUserInfo() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      username = (snap.data() as Map<String, dynamic>)['name'];
      phoneNum = (snap.data() as Map<String, dynamic>)['phoneNum'];
      if (phoneNum.length % 3 == 0) {
        for (int i = 0; i < phoneNum.length - 2; i += 3) {
          formattedPhoneNum += phoneNum.substring(i, i + 3);
          if (i < phoneNum.length - 3) formattedPhoneNum += ' ';
        }
      }
    });
  }

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  final TextEditingController priceController = TextEditingController();
  final TextEditingController engineController = TextEditingController();
  final TextEditingController powerController = TextEditingController();
  final TextEditingController mileageController = TextEditingController();
  final TextEditingController vinController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    engineController.dispose();
    powerController.dispose();
    mileageController.dispose();
    vinController.dispose();
    descriptionController.dispose();
  }

  String _markValue = '-';
  String _yearValue = '-';
  String _seatsNumValue = '-';
  String _fuelValue = '-';
  String _gearboxValue = '-';
  String _conditionValue = '-';
  String _registeredPLValue = '-';
  String _modelValue = '-';
  String _generationValue = '-';
  String _categoryValue = '-';
  String _colorValue = '-';
  String _driveValue = '-';
  String _versionValue = '-';
  String _bodyValue = '-';

  List<String> modelsList = ['Wybierz'];
  List<String> generationsList = ['Wybierz'];

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
                            WybierzMarke(
                              onChanged: (String value) {
                                _markValue = value;
                                setState(() {});
                                if (_markValue != 'Wybierz') {
                                  getModels(_markValue).then((value) {
                                    modelsList = value;
                                    setState(() {});
                                  });
                                }
                              },
                            ),
                            WybierzRok(
                              onChanged: (String value) {
                                _yearValue = value;
                              },
                            ),
                            WybierzIloscMiejsc(
                              onChanged: (String value) {
                                _seatsNumValue = value;
                              },
                            ),
                            WybierzPaliwo(
                              onChanged: (String value) {
                                _fuelValue = value;
                              },
                            ),
                            WybierzSkrzynie(
                              onChanged: (String value) {
                                _gearboxValue = value;
                              },
                            ),
                            WybierzStan(
                              onChanged: (String value) {
                                _conditionValue = value;
                              },
                            ),
                            WybierzCzyZarejestrowany(
                              onChanged: (String value) {
                                _registeredPLValue = value;
                              },
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WybierzModel(
                            onChanged: (String value) {
                              _modelValue = value;
                              setState(() {});
                              if (_modelValue != 'Wybierz') {
                                getGenerations(_markValue, _modelValue)
                                    .then((value) {
                                  generationsList = value;
                                  setState(() {});
                                });
                              }
                            },
                            models: modelsList,
                          ),
                          WybierzGeneracje(
                            onChanged: (String value) {
                              _generationValue = value;
                              setState(() {});
                            },
                            generations: generationsList,
                          ),
                          WybierzKategorie(
                            onChanged: (String value) {
                              _categoryValue = value;
                            },
                          ),
                          WybierzKolor(
                            onChanged: (String value) {
                              _colorValue = value;
                            },
                          ),
                          WybierzNaped(
                            onChanged: (String value) {
                              _driveValue = value;
                            },
                          ),
                          WybierzWersje(
                            onChanged: (String value) {
                              _versionValue = value;
                            },
                          ),
                          WybierzNadwozie(
                            onChanged: (String value) {
                              _bodyValue = value;
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                PodajCene(
                  controller: priceController,
                ),
                WybierzPojemnosc(
                  controller: engineController,
                ),
                WybierzMoc(controller: powerController),
                WybierzPrzebieg(controller: mileageController),
                PodajVin(
                  controller: vinController,
                ),
                DodatkoweWyposazenie(),
                Divider(),
                Center(
                  child: Column(
                    children: [
                      imagefiles != null
                          ? Wrap(
                              children: imagefiles!.map((imageone) {
                                return Container(
                                    child: Card(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.file(File(imageone.path)),
                                  ),
                                ));
                              }).toList(),
                            )
                          : Container(),
                      GestureDetector(
                        onTap: () {
                          openImages();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.yellow[600]!,
                                  Colors.yellow[700]!
                                ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: RichText(
                                    text: TextSpan(
                                        text: imagefiles == null
                                            ? "Dodaj zdjęcia"
                                            : "Zmień zdjęcia",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))),
                              ),
                              Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: descriptionController,
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
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      RichText(
                        text: TextSpan(
                          text: 'Dane Kontaktowe',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Montserrat'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            change = true;
                          });
                        },
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.yellow[600],
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.yellow[600]!,
                                    Colors.yellow[700]!
                                  ]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Numer kontaktowy:',
                                  style: TextStyle(
                                      color: Colors.grey[50],
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                change = true;
                              });
                            },
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.yellow[600]!)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.yellow[600]!)),
                                border: change
                                    ? UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.yellow[600]!))
                                    : InputBorder.none,
                                enabled: change,
                              ),
                              initialValue: formattedPhoneNum,
                            ),
                          ),
                        )
                        // RichText(
                        //   text: TextSpan(
                        //     text: '+48 000 000 000',
                        //     style: TextStyle(
                        //         color: Colors.black, fontFamily: 'Montserrat'),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
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
