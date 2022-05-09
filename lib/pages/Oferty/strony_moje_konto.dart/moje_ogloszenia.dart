import 'package:flutter/material.dart';

class MojeOgloszenia extends StatefulWidget {
  const MojeOgloszenia({Key? key}) : super(key: key);

  @override
  State<MojeOgloszenia> createState() => _MojeOgloszeniaState();
}

class _MojeOgloszeniaState extends State<MojeOgloszenia> {
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
          text: 'Moje Ogłoszenia',
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
