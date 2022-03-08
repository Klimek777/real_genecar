import 'package:flutter/material.dart';
import 'package:genecar/pages/blog.dart';

class OfertyDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String firma;
  final String model;
  final String cena;
  OfertyDetailsPage(
      {required this.title,
      required this.image,
      required this.firma,
      required this.model,
      required this.cena});
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
        backgroundColor: Colors.yellow[600],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
