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
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                backgroundColor: Colors.yellowAccent[700],
                child: Icon(
                  Icons.navigate_before,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
            ],
          ),
          body: Column(
            children: [
              Stack(
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -970,
                    child: Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      width: MediaQuery.of(context).size.width,
                      height: 1000,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: Text("$title",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
