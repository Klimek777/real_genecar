import 'package:flutter/material.dart';
import 'package:genecar/main.dart';

class WybierzRok extends StatefulWidget {
  const WybierzRok({Key? key}) : super(key: key);

  @override
  State<WybierzRok> createState() => _WybierzRokState();
}

class _WybierzRokState extends State<WybierzRok> {
  String dropdownValue = 'wybierz';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Wybierz Rok", style: TextStyle(color: Colors.black)),
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
                  '2000',
                  '2001',
                  '2002',
                  '2003',
                  '2004',
                  '2005',
                  '2006',
                  '2007',
                  '2008',
                  '2009',
                  '2010',
                  '2011',
                  '2012',
                  '2013',
                  '2014'
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
