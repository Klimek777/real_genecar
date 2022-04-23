import 'package:flutter/material.dart';

class WybierzPojemnosc extends StatefulWidget {
  const WybierzPojemnosc({Key? key}) : super(key: key);

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
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.black,
            hoverColor: Colors.black,
            hintText: 'Wprowadz przebieg',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz przebieg'),
      ),
    );
  }
}
