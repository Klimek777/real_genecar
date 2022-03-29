import 'package:flutter/material.dart';
import 'package:genecar/pages/Blog/blog.dart';

class PostDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String date;
  PostDetailsPage(
      {required this.title,
      required this.image,
      required this.author,
      required this.date});
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
        backgroundColor: Colors.yellow[600],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: EdgeInsets.only(top: 32),
          child: ListView(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  Text('$author, '),
                  Text(
                    date,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 12,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                        size: 16,
                      ),
                      Text(
                        '6.5k wyswietlen',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 16,
                      ),
                      Text(
                        '106 polubień',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image),
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'A',
                    style: TextStyle(color: Colors.black, fontSize: 32)),
                TextSpan(
                    text:
                        'rtykuły serwisu Magazyn Motoryzacyjny przeznaczone są dla wszystkich, którym nie wystarczają powierzchowne informacje zawarte w popularnej prasie i serwisach motoryzacyjnych. W artykułach odnajdziesz rzetelne informacje oraz szczegółowe objaśnienia przedstawione w przyjazny sposób, w czterech grupach tematycznych. Dwie z nich poświęcone są finalnemu pięknu motoryzacji, czyli konkretnym samochodom. Prezentacje samochodów opisuje nowoczesne imponujące pojazdy, natomiast Motoryzacja klasyczna opisuje historyczne ikony motoryzacji. Dla wszystkich, którzy samochody chcą poznać od środka przeznaczone są działy Technika silnikowa oraz Technika samochodowa. Zapraszamy do czytania naszych artykułów!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.5,
                        wordSpacing: 2)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
