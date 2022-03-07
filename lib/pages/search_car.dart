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
        backgroundColor: Colors.yellow[600],
        title: const Text(
          'Znajdź auto',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
