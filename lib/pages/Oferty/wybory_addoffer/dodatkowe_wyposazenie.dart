import 'package:flutter/material.dart';

class DodatkoweWyposazenie extends StatefulWidget {
  const DodatkoweWyposazenie({Key? key}) : super(key: key);

  @override
  State<DodatkoweWyposazenie> createState() => _DodatkoweWyposazenieState();
}

class _DodatkoweWyposazenieState extends State<DodatkoweWyposazenie> {
  bool isChecked = false;
  List<String> _texts = [
    "InduceSmile.com," "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.yellow[600]!;
      }
      return Colors.yellow[600]!;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: ExpansionTile(
          collapsedIconColor: Colors.yellow[600]!,
          iconColor: Colors.yellow[600],
          textColor: Colors.black,
          tilePadding: EdgeInsets.fromLTRB(60, 0, 60, 0),
          backgroundColor: Colors.grey[50],
          title: Text(" Dodatkowe wyposazenie"),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Czujniki\nparkowania ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat')))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Skórzana\ntapicerka',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat')))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Czujniki\ndeszczu',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat')))
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Przyciemniane\nszyby',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat')))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
