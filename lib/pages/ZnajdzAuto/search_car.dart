import 'package:flutter/material.dart';

class Search_car extends StatefulWidget {
  const Search_car({Key? key}) : super(key: key);

  @override
  _Search_carState createState() => _Search_carState();
}

class _Search_carState extends State<Search_car> {
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
          'Znajdź auto',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
