import 'package:flutter/material.dart';

class WybierzModel extends StatefulWidget {
  const WybierzModel({Key? key}) : super(key: key);

  @override
  State<WybierzModel> createState() => _WybierzModelState();
}

class _WybierzModelState extends State<WybierzModel> {
  String dropdownValue1 = 'Wybierz';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: "Wybierz model",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
        ),
        DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue1,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          iconEnabledColor: Colors.yellow[700],
          elevation: 16,
          style: const TextStyle(
            color: Colors.black,
          ),
          underline: Container(
            height: 1,
            color: Colors.yellow[600],
          ),
          onChanged: (String? newValue1) {
            setState(() {
              dropdownValue1 = newValue1!;
            });
          },
          items: <String>['Wybierz', 'Model 1', 'Model 2', 'Model 3']
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
        )
      ],
    );
  }
}
