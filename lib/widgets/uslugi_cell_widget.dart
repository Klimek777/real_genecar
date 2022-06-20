import 'package:flutter/material.dart';
import 'package:genecar/main.dart';
import 'package:genecar/pages/Uslugi/uslugi.dart';
import 'package:genecar/widgets/popularne_marki_widget.dart';

// kateogorie uslug
class UslugiCellWidget extends StatefulWidget {
  final String title;
  final Icon icon;
  int pressed = 0;

  UslugiCellWidget(this.title, this.icon) {}

  @override
  State<StatefulWidget> createState() => _UslugiCellWidget();
}

class _UslugiCellWidget extends State<UslugiCellWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          constraints: BoxConstraints(maxWidth: double.infinity),
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.icon,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Center(
                  child: RichText(
                      softWrap: true,
                      text: TextSpan(
                          text: widget.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold))),
                ),
              )
            ],
          )),
    );
  }
}
