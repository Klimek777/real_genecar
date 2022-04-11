// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:genecar/pages/Blog/add_post.dart';
import 'package:genecar/pages/Blog/post_details_page.dart';
import 'package:genecar/widgets/post_cell_widget.dart';

class Post {
  final String title;
  final String image;
  final String author;
  final String date;
  Post(
      {required this.title,
      required this.image,
      required this.author,
      required this.date});
}

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  final data = [
    Post(
      title: 'Dlaczego boimy się korzystać z komisów samochodwych',
      image: 'assets/images/auta_komis.jpeg',
      author: 'Dawid',
      date: '25 mar 2020',
    ),
    Post(
      title: 'Jakie naprawy warto wykonywać samemu',
      image: 'assets/images/naprawy.jpeg',
      author: 'Michal',
      date: '25 mar 2020',
    ),
    Post(
      title: 'Znajdz swój samochód - rewolucja',
      image: 'assets/images/skoda_jakas.jpeg',
      author: 'Mateusz',
      date: '25 mar 2020',
    ),
    Post(
      title: 'Kiedy na wakacje wybrać się autem?',
      image: 'assets/images/wycieczka.jpeg',
      author: 'Dawid',
      date: '25 mar 2020',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
            text: 'Blog',
            style: TextStyle(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 20),
          ),
        ),
        actions: [
          InkWell(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(
                    Icons.notifications_outlined,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(Icons.bookmark_outline),
                ),
              ],
            ),
          ),
          InkWell(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Icon(
                    Icons.message_outlined,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BlogAddPost()));
            },
            child: InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Wyszukaj artykuły, autorów lub tagi",
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
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Najnowsze artykuly ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final post = data[index];
                    return PostCellWidget(
                        title: post.title,
                        image: post.image,
                        author: post.author,
                        date: post.date,
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => PostDetailsPage(
                                title: post.title,
                                image: post.image,
                                author: post.author,
                                date: post.date),
                          ));
                        });
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.yellow[700],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Popularne kategorie',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('Poradniki', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 100,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child:
                              Text('Specyfikacje', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('Spalanie', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('Nowosci ', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text(
                            'GeneCar',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Popularne marki',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('Audi', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 100,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('BMW', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 90,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child:
                              Text('Volkswagen', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text('Mercedes ', textAlign: TextAlign.center),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Text(
                            'Peugot',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
