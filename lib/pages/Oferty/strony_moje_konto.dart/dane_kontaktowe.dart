import 'package:flutter/material.dart';

class DaneKontatkowe extends StatefulWidget {
  const DaneKontatkowe({Key? key}) : super(key: key);

  @override
  State<DaneKontatkowe> createState() => _DaneKontatkoweState();
}

class _DaneKontatkoweState extends State<DaneKontatkowe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
          ),
        ),
        backgroundColor: Colors.yellow[600],
        title: RichText(
            text: TextSpan(
          text: 'Dane Kontaktowe',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Montserrat',
          ),
        )),
        actions: [],
      ),
    );
  }
}
