import 'package:flutter/material.dart';

class ObokCiebie extends StatefulWidget {
  final String image;
  final String title;

  final String kategoria;
  final double dystans;
  final bool Open;
  final String JakDrogo;
  final Icon Ikona;
  ObokCiebie(this.image, this.title, this.kategoria, this.dystans, this.Open,
      this.JakDrogo, this.Ikona) {}

  @override
  State<StatefulWidget> createState() => _ObokCiebie();
}

class _ObokCiebie extends State<ObokCiebie> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          height: 170,
          decoration: BoxDecoration(
            color: Colors.white,
            // color: Color.fromARGB(255, 238, 238, 238),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 140,
                  height: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          text: widget.title,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: widget.kategoria,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black),
                                  ),
                                ),
                                widget.Ikona,
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: RichText(
                              text: TextSpan(
                                text: widget.dystans.toString() + " M",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                                text: widget.Open == false
                                    ? TextSpan(
                                        text: "Zamknięte",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red))
                                    : TextSpan(
                                        text: "Otwarte",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.black))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: "Ceny: " + widget.JakDrogo,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
