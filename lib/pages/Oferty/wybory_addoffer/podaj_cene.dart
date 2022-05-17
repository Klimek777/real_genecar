import 'package:flutter/material.dart';
import 'package:genecar/widgets/text_field_input.dart';

class PodajCene extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  PodajCene({Key? key, required this.controller}) : super(key: key);

  @override
  State<PodajCene> createState() => _PodajCeneState();
}

class _PodajCeneState extends State<PodajCene> {
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
            hintText: 'Wprowadz cene',
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
            labelText: 'Wprowadz cene'),
      ),
    );
  }
}
