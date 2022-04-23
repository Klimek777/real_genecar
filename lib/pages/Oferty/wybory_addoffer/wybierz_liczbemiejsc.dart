import 'package:flutter/material.dart';

class WybierzIloscMiejsc extends StatefulWidget {
  const WybierzIloscMiejsc({Key? key}) : super(key: key);

  @override
  State<WybierzIloscMiejsc> createState() => _WybierzIloscMiejscState();
}

class _WybierzIloscMiejscState extends State<WybierzIloscMiejsc> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: "Ilość miejsc", style: TextStyle(color: Colors.black)),
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
            '2',
            '3 ',
            '4 ',
            '5 ',
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
