import 'package:flutter/material.dart';

class WybierzMoc extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  WybierzMoc({Key? key, required this.controller}) : super(key: key);

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
        controller: widget.controller,
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
