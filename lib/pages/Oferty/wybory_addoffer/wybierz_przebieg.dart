import 'package:flutter/material.dart';

class WybierzPrzebieg extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  WybierzPrzebieg({Key? key, required this.controller}) : super(key: key);

  @override
  State<WybierzPrzebieg> createState() => _WybierzPrzebiegState();
}

class _WybierzPrzebiegState extends State<WybierzPrzebieg> {
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
            hintText: 'Wprowadz przebieg',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz przebieg'),
      ),
    );
  }
}
