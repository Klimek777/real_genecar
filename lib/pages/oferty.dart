import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:genecar/widgets/popularne_marki_widget.dart';

import 'ogloszenia_lista.dart';
import 'package:flutter/material.dart';
import 'package:genecar/pages/oferty_deatils_page.dart';
import 'package:genecar/widgets/oferty_cell_widget.dart';
import 'package:genecar/widgets/testowy_pasek.dart';

class Oferty extends StatefulWidget {
  @override
  _OfertyState createState() => _OfertyState();
}

class _OfertyState extends State<Oferty> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
      body: SafeArea(
        minimum: const EdgeInsets.all(8),
        child: Column(
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      TextSpan(text: 'Zobacz '),
                      WidgetSpan(
                        child: Container(
                            height: 26,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.yellow[600]!,
                                    Colors.yellow[700]!
                                  ]),
                            ),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'oferty',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ))),
                      ),
                      TextSpan(text: ' spełniające  '),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                              height: 26,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.yellow[600]!,
                                      Colors.yellow[700]!
                                    ]),
                              ),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'twoje wymagania!',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ))),
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                      hintText: "Zacznij swoje poszukiwania ",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.yellow[600],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Icon(
                          Icons.filter_alt_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: 'Popularne Marki',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Colors.black,
                      fontFamily: "Montserrat"),
                ),
              ),
            ),
            Offers(),
            Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                  text: 'Rekomendowane: ',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(1, 1.0),
                            blurRadius: 3.0,
                            color: Colors.grey[600]!),
                      ],
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ))),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 6,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final post = data[index];
                  return OfertyCellWidget(
                    title: post.title,
                    image: post.image,
                    firma: post.firma,
                    model: post.model,
                    cena: post.cena,
                    rok: post.rok,
                    przebieg: post.przebieg,
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => OfertyDetailsPage(
                          title: post.title,
                          image: post.image,
                          firma: post.firma,
                          model: post.model,
                          cena: post.cena,
                          opis: post.opis,
                          image1: post.image1,
                          image2: post.image2,
                          image3: post.image3,
                        ),
                      ));
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Główna',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Wiadomości',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Ulubione',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_add),
            label: 'Moje oferty ',
          ),
        ],
        selectedItemColor: Colors.yellow[600],
      ),
    );
  }
}
