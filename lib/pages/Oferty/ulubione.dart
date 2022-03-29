import 'package:flutter/material.dart';

class UlubionePage extends StatefulWidget {
  const UlubionePage({Key? key}) : super(key: key);

  @override
  State<UlubionePage> createState() => _UlubioneState();
}

class _UlubioneState extends State<UlubionePage> {
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
          text: 'Ulubione',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Montserrat',
          ),
        )),
        actions: [],
      ),
      body: Center(
        child: Text('xd'),
      ),
    );
  }
}
