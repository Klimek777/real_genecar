import 'package:flutter/material.dart';
import 'package:genecar/pages/blog.dart';

class OfertyDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String firma;
  final String model;
  final String cena;
  final String opis;
  final String image1;
  final String image2;
  final String image3;
  const OfertyDetailsPage(
      {required this.title,
      required this.image,
      required this.firma,
      required this.model,
      required this.cena,
      required this.opis,
      required this.image1,
      this.image2 = '',
      this.image3 = ''});
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
          body: Stack(
            children: <Widget>[
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0.0,
                top: MediaQuery.of(context).size.width * 0.60,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "$title",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                cena,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: Text(
                            opis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Zdjęcia',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.022),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  image1,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const SizedBox(width: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  image2,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const SizedBox(width: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  image3,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const SizedBox(width: 5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  image3,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
            overflow: Overflow.visible,
          ),
        ),
      ),
    );
  }
}
