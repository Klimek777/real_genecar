import 'package:flutter/material.dart';

class WybierzPojemnosc extends StatefulWidget {
  const WybierzPojemnosc({Key? key}) : super(key: key);

  @override
  State<WybierzPojemnosc> createState() => _WybierzPojemnoscState();
}

class _WybierzPojemnoscState extends State<WybierzPojemnosc> {
  String dropdownValue = 'wybierz';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Pojemność skok.", style: TextStyle(color: Colors.black)),
          ),
          Row(
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.yellow[600],
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'wybierz',
                  '1000 cm',
                  '2000 cm ',
                  '2500 cm',
                  '3000 cm'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: RichText(
                      text: TextSpan(
                        text: value,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
