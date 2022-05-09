import 'package:flutter/material.dart';

class Uslugi extends StatefulWidget {
  const Uslugi({Key? key}) : super(key: key);

  @override
  _UslugiState createState() => _UslugiState();
}

class _UslugiState extends State<Uslugi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
          ),
        ),
        title: const Text(
          'Usługi',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
