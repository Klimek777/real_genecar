import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_moc.dart';
import 'package:genecar/pages/Oferty/wybory_addoffer/wybierz_model.dart';

List<String> marksList = ['Wybierz'];
String dropdownValue = 'Wybierz';

class WybierzMarke extends StatefulWidget {
  final Function(String) onChanged;
  WybierzMarke({Key? key, required this.onChanged}) : super(key: key);
  @override
  State<WybierzMarke> createState() => _WybierzMarkeState();
}

class _WybierzMarkeState extends State<WybierzMarke> {
  @override
  void initState() {
    super.initState();
    getMarks();
  }

  void getMarks() async {
    marksList = ['Wybierz'];
    DocumentSnapshot snap =
        await FirebaseFirestore.instance.collection('marks').doc('marks').get();
    setState(() {
      for (String mark in snap.get('marksList')) {
        marksList.add(mark);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(
          text: TextSpan(
              text: "Wybierz markę",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
        ),
        DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          iconEnabledColor: Colors.yellow[700],
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 1,
            color: Colors.yellow[600],
          ),
          onChanged: (String? newValue) {
            widget.onChanged(newValue!);
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: marksList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: RichText(
                text: TextSpan(
                  text: value,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
