import 'package:flutter/material.dart';

class WybierzPrzebieg extends StatefulWidget {
  const WybierzPrzebieg({Key? key}) : super(key: key);

  @override
  State<WybierzPrzebieg> createState() => _WybierzPrzebiegState();
}

class _WybierzPrzebiegState extends State<WybierzPrzebieg> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
      child: TextField(
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
