import 'package:flutter/material.dart';

import '../../widgets/oferty_cell_widget.dart';
import 'oferty_deatils_page.dart';
import 'ogloszenia_lista.dart';

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
        body: SafeArea(
          minimum: const EdgeInsets.all(8),
          child: ListView.separated(
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
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
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
          ),
        ));
  }
}
