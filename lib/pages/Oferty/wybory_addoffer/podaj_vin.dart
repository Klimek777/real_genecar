import 'package:flutter/material.dart';

class PodajVin extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  PodajVin({Key? key, required this.controller}) : super(key: key);

  @override
  State<PodajVin> createState() => _PodajVinState();
}

class _PodajVinState extends State<PodajVin> {
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
            hintText: 'Wprowadz numer Vin',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz VIN'),
      ),
    );
  }
}
