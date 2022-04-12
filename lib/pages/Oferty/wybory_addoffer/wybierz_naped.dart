import 'package:flutter/material.dart';

class WybierzNaped extends StatefulWidget {
  const WybierzNaped({Key? key}) : super(key: key);

  @override
  State<WybierzNaped> createState() => _WybierzNapedState();
}

class _WybierzNapedState extends State<WybierzNaped> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Wybierz';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(text: "Napęd", style: TextStyle(color: Colors.black)),
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
          items: <String>['Wybierz', 'przód', 'tył ', ' 4x4']
              .map<DropdownMenuItem<String>>((String value1) {
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
