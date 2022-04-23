import 'package:flutter/material.dart';

class WybierzMoc extends StatefulWidget {
  const WybierzMoc({Key? key}) : super(key: key);

  @override
  State<WybierzMoc> createState() => _WybierzMocState();
}

class _WybierzMocState extends State<WybierzMoc> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 0),
      child: TextField(
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.black,
            hoverColor: Colors.amber,
            hintText: 'Wprowadz moc',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz moc w km'),
      ),
    );
  }
}
