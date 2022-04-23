import 'package:flutter/material.dart';

class WybierzKategorie extends StatefulWidget {
  const WybierzKategorie({Key? key}) : super(key: key);

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
              text: "Kategoria", style: TextStyle(color: Colors.black)),
        ),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.yellow[600],
          ),
          onChanged: (String? newValue1) {
            setState(() {
              dropdownValue = newValue1!;
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
                    text: value1, style: TextStyle(color: Colors.black)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
