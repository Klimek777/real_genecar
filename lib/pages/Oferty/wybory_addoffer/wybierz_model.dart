import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:genecar/pages/Oferty/add_offer.dart';

bool getting = false;
String dropdownValue1 = 'Wybierz';

class WybierzModel extends StatefulWidget {
  List<String> models;
  final Function(String) onChanged;
  WybierzModel({Key? key, required this.onChanged, required this.models})
      : super(key: key);
  @override
  State<WybierzModel> createState() => _WybierzModelState();
}

Future<List<String>> getModels(String mark) async {
  getting = true;
  dropdownValue1 = 'Wybierz';
  List<String> modelsListCopy = ['Wybierz'];
  DocumentSnapshot snap = await FirebaseFirestore.instance
      .collection('marks')
      .doc(mark)
      .collection('models')
      .doc('models')
      .get();

  for (String mark in snap.get('models')) {
    modelsListCopy.add(mark);
  }
  getting = false;
  return modelsListCopy;
}

class _WybierzModelState extends State<WybierzModel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: "Wybierz model",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
        ),
        DropdownButton<String>(
          onTap: () {},
          isExpanded: true,
          value: dropdownValue1,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          iconEnabledColor: Colors.yellow[700],
          elevation: 16,
          style: const TextStyle(
            color: Colors.black,
          ),
          underline: Container(
            height: 1,
            color: Colors.yellow[600],
          ),
          onChanged: (String? newValue) {
            widget.onChanged(newValue!);
            setState(() {
              dropdownValue1 = newValue;
            });
          },
          items: widget.models.map<DropdownMenuItem<String>>((String value1) {
            return DropdownMenuItem<String>(
              value: value1,
              child: RichText(
                text: TextSpan(
                    text: value1,
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Montserrat')),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
