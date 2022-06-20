import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class ListaChatow extends StatefulWidget {
  final String uzytkownik;
  final NetworkImage zdjecie;
  final String lastmess;
  final String godzina;
  ListaChatow(this.zdjecie, this.uzytkownik, this.lastmess, this.godzina);

  @override
  State<ListaChatow> createState() => _ListaChatowState();
}

class _ListaChatowState extends State<ListaChatow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amberAccent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 60,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: widget.zdjecie,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: widget.uzytkownik,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: widget.lastmess,
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: RichText(
                      text: TextSpan(
                          text: widget.godzina,
                          style: TextStyle(color: Colors.grey, fontSize: 13)),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
