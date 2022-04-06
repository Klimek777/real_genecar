import 'package:flutter/material.dart';
import 'package:genecar/pages/Oferty/add_offer.dart';
import 'package:genecar/pages/Oferty/chat.dart';
import 'package:genecar/pages/Oferty/moje_oferty.dart';
import 'package:genecar/pages/Oferty/oferty.dart';
import 'package:genecar/pages/Oferty/ulubione.dart';

class TesowyPage extends StatefulWidget {
  const TesowyPage({Key? key}) : super(key: key);

  @override
  State<TesowyPage> createState() => _TesowyPageState();
}

class _TesowyPageState extends State<TesowyPage> {
  @override
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List _children = [
    Oferty(),
    ChatPage(),
    AddOffer(),
    UlubionePage(),
    MyPage()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Główna',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Dodaj',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Ulubione',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mój Profil ',
          ),
        ],
        selectedItemColor: Colors.yellow[600],
      ),
    );
  }
}
