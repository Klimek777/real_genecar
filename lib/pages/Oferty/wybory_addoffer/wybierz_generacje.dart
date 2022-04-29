import 'package:flutter/material.dart';

class WybierzGeneracje extends StatefulWidget {
  const WybierzGeneracje({Key? key}) : super(key: key);

  @override
  State<WybierzGeneracje> createState() => _WybierzGeneracjeState();
}

class _WybierzGeneracjeState extends State<WybierzGeneracje> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Generacja",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold)),
          ),
          DropdownButton<String>(
            iconEnabledColor: Colors.yellow[700],
            iconSize: 20,
            isExpanded: true,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 1,
              color: Colors.yellow[600],
            ),
            onChanged: (String? newValue1) {
              setState(() {
                dropdownValue = newValue1!;
              });
            },
            items: <String>[
              'Wybierz',
              'Generacja 1',
              'Generacja 2',
              'Generacja 3'
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
          )
        ],
      ),
    );
  }
}
