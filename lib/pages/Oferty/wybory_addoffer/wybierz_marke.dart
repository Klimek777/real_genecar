import 'package:flutter/material.dart';

class WybierzMarke extends StatefulWidget {
  const WybierzMarke({Key? key}) : super(key: key);

  @override
  State<WybierzMarke> createState() => _WybierzMarkeState();
}

class _WybierzMarkeState extends State<WybierzMarke> {
  String dropdownValue = 'Wybierz';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        RichText(
          text: TextSpan(
              text: "Wybierz marke",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
        ),
        DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          iconEnabledColor: Colors.yellow[700],
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
          items: <String>['Wybierz', 'Audi', 'Mercedes', 'BMW']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: RichText(
                text: TextSpan(
                  text: value,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
