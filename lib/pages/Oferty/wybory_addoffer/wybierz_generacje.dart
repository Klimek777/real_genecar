import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WybierzGeneracje extends StatefulWidget {
  List<String> generations;
  final Function(String) onChanged;
  WybierzGeneracje(
      {Key? key, required this.onChanged, required this.generations})
      : super(key: key);

  @override
  State<WybierzGeneracje> createState() => _WybierzGeneracjeState();
}

bool getting = false;
String dropdownValue = 'Wybierz';

Future<List<String>> getGenerations(String mark, String model) async {
  getting = true;
  dropdownValue = 'Wybierz';
  List<String> generationsListCopy = ['Wybierz'];
  DocumentSnapshot snap = await FirebaseFirestore.instance
      .collection('marks')
      .doc(mark)
      .collection(model)
      .doc('generations')
      .get();

  for (String generation in snap.get('generations')) {
    generationsListCopy.add(generation);
  }
  getting = false;

  return generationsListCopy;
}

class _WybierzGeneracjeState extends State<WybierzGeneracje> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Generacja",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold)),
          ),
          DropdownButton<String>(
            iconEnabledColor: Colors.yellow[700],
            iconSize: 20,
            isExpanded: true,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
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
            items: widget.generations
                .map<DropdownMenuItem<String>>((String value1) {
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
      ),
    );
  }
}
