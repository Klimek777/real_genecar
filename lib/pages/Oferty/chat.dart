import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
          text: 'Wiadmosci',
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
