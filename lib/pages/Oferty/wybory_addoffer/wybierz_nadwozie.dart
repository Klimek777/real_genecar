import 'package:flutter/material.dart';

class WybierzNadwozie extends StatefulWidget {
  const WybierzNadwozie({Key? key}) : super(key: key);

  @override
  State<WybierzNadwozie> createState() => _WybierzNadwozieState();
}

class _WybierzNadwozieState extends State<WybierzNadwozie> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: "Wybierz nadwozie",
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
          onChanged: (String? newValue1) {
            setState(() {
              dropdownValue = newValue1!;
            });
          },
          items: <String>['Wybierz', 'sedan', 'kombi', ' coupe']
              .map<DropdownMenuItem<String>>((String value1) {
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
