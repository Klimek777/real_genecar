import 'package:flutter/material.dart';

class WybierzKategorie extends StatefulWidget {
  final Function(String) onChanged;
  const WybierzKategorie({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<WybierzKategorie> createState() => _WybierzKategorieState();
}

class _WybierzKategorieState extends State<WybierzKategorie> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: "Kategoria",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
        ),
        DropdownButton<String>(
          isExpanded: true,
          iconSize: 20,
          iconEnabledColor: Colors.yellow[700],
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
          items: <String>[
            'Wybierz',
            'Osobowe',
            'Miejskie ',
            'Coupe ',
          ].map<DropdownMenuItem<String>>((String value1) {
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
        ),
      ],
    );
  }
}
