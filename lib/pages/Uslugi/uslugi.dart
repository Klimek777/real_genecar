import 'package:flutter/material.dart';
import 'package:genecar/widgets/obok_ciebie.dart';
import 'package:genecar/widgets/uslugi_cell_widget.dart';

class ListaKategorii {
  final String titile;
  final Icon icon;
  ListaKategorii(this.titile, this.icon) {}
}

final KategorieUslug = [
  ListaKategorii(
      "Wszystkie",
      Icon(
        Icons.all_inclusive,
        color: Colors.white,
      )),
  ListaKategorii(
      "Mechanicy",
      Icon(
        Icons.build_outlined,
        color: Colors.white,
      )),
  ListaKategorii("Myjnie", Icon(Icons.local_car_wash, color: Colors.white)),
  ListaKategorii("Wypozyczalnie", Icon(Icons.car_rental, color: Colors.white)),
  ListaKategorii("Pomoc drogowa", Icon(Icons.info, color: Colors.white)),
  ListaKategorii("Wulkanizacja", Icon(Icons.tire_repair, color: Colors.white))
];

class ListaOfert {
  final String image;
  final String title;

  final String kategoria;
  final double dystans;
  final bool Open;
  final String JakDrogo;
  final Icon Ikona;
  ListaOfert(this.image, this.title, this.kategoria, this.dystans, this.Open,
      this.JakDrogo, this.Ikona) {
    if (kategoria == 'Myjnia') {
      Ikona == Icon(Icons.build_outlined);
    }
  }
}

final OfertyUslug = [
  ListaOfert(
    "https://www.moto3m.pl/wp-content/uploads/2020/08/Nowa-myjnia-Carwash-SPA-w-Gda%C5%84sku-funkcjonowanie-03872.jpg",
    "Myjnia u Janka",
    "Myjnia",
    200,
    true,
    "\$\$\$",
    Icon(Icons.local_car_wash, color: Colors.amberAccent),
  ),
  ListaOfert(
    "https://www.zstiojar.edu.pl/uploads/images/galleries/strony/kandydat/branzowa/mechanik-pojazdow-samochodowych/009.jpg",
    "Mechanik Piotr",
    "Mechanik",
    200,
    false,
    "\$\$",
    Icon(Icons.build_outlined, color: Colors.amberAccent),
  ),
  ListaOfert(
    "https://bkfcarwash.eu/wp-content/uploads/2018/12/thumb-homepage.jpg",
    "Myjnia Fresh",
    "Myjnia",
    200,
    true,
    "\$",
    Icon(Icons.local_car_wash, color: Colors.amberAccent),
  ),
];

class Uslugi extends StatefulWidget {
  const Uslugi({Key? key}) : super(key: key);

  @override
  _UslugiState createState() => _UslugiState();
}

class _UslugiState extends State<Uslugi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          'Usługi',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    children: [
                      TextSpan(
                          text:
                              "Jesteś w dobrych rękach, przeglądaj najlepszy wybór "),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                          child: Container(
                              height: 25,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.yellow[600]!,
                                      Colors.yellow[700]!
                                    ]),
                              ),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'usług motoryzacyjncyh ',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ))),
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                      hintText: "Zacznij swoje poszukiwania ",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.yellow[600],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Icon(
                          Icons.filter_alt_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                height: 45,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: KategorieUslug.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final kategoria = KategorieUslug[index];
                    return UslugiCellWidget(kategoria.titile, kategoria.icon);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Obok Ciebie: ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                      text: TextSpan(
                          text: '(zmien kategorie)',
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.black))),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 600,
                child: ListView.separated(
                    itemBuilder: ((context, index) {
                      final usluga = OfertyUslug[index];
                      return ObokCiebie(
                          usluga.image,
                          usluga.title,
                          usluga.kategoria,
                          usluga.dystans,
                          usluga.Open,
                          usluga.JakDrogo,
                          usluga.Ikona);
                    }),
                    separatorBuilder: (context, index) => Divider(
                          height: 2,
                        ),
                    itemCount: OfertyUslug.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
