import 'package:flutter/material.dart';

class WybierzSkrzynie extends StatefulWidget {
  const WybierzSkrzynie({Key? key}) : super(key: key);

  @override
  State<WybierzSkrzynie> createState() => _WybierzSkrzynieState();
}

class _WybierzSkrzynieState extends State<WybierzSkrzynie> {
  String dropdownValue = 'wybierz';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Skrzynia",
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
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['wybierz', 'automat', 'manual']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: RichText(
                  text: TextSpan(
                    text: value,
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Montserrat'),
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
