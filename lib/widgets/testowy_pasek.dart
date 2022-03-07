import 'package:flutter/material.dart';

class TestowyPasek extends StatelessWidget {
  final String marka;
  TestowyPasek(this.marka);

  final marki = [
    TestowyPasek('Audi'),
    TestowyPasek('Mercedes'),
    TestowyPasek('BMW'),
    TestowyPasek('Peugot')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final cos = marki[index];
          return TestowyPasek(cos.marka);
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.yellow[700]),
        itemCount: marki.length);
  }
}
