import 'package:flutter/material.dart';

class WybierzIloscMiejsc extends StatefulWidget {
  final Function(String) onChanged;
  const WybierzIloscMiejsc({Key? key, required this.onChanged})
      : super(key: key);

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
              text: "Ilość miejsc",
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
            '2',
            '3 ',
            '4 ',
            '5 ',
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
