import 'package:flutter/material.dart';
import 'package:genecar/main.dart';

class WybierzRok extends StatefulWidget {
  final Function(String) onChanged;
  const WybierzRok({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<WybierzRok> createState() => _WybierzRokState();
}

class _WybierzRokState extends State<WybierzRok> {
  String dropdownValue = 'Wybierz';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Wybierz Rok",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold)),
          ),
          DropdownButton<String>(
            iconSize: 20,
            iconEnabledColor: Colors.yellow[700],
            isExpanded: true,
            menuMaxHeight: 400,
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
