import 'package:flutter/material.dart';

class AddOffer extends StatefulWidget {
  const AddOffer({Key? key}) : super(key: key);

  @override
  State<AddOffer> createState() => _AddOfferState();
}

class _AddOfferState extends State<AddOffer> {
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
          text: 'Oferty',
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
