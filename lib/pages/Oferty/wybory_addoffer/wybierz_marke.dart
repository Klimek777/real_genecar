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
    return Column(children: [
      Padding(
        padding: EdgeInsets.fromLTRB(40, 20, 0, 2),
        child: RichText(
          text: TextSpan(
              text: "Wybierz marke", style: TextStyle(color: Colors.black)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
        child: DropdownButton<String>(
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
          items: <String>['Wybierz', 'Audi', 'Mercedes', 'BMW']
              .map<DropdownMenuItem<String>>((String value) {
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
      )
    ]);
  }
}
