import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WybierzPojemnosc extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  WybierzPojemnosc({Key? key, required this.controller}) : super(key: key);

  @override
  State<WybierzPojemnosc> createState() => _WybierzPojemnoscState();
}

class _WybierzPojemnoscState extends State<WybierzPojemnosc> {
  String dropdownValue = 'wybierz';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.black,
            hoverColor: Colors.black,
            hintText: 'Wprowadz pojemność w cm3',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz pojemność'),
      ),
    );
  }
}
