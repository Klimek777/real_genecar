import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:genecar/pages/Blog/blog.dart';
import 'package:genecar/resources/firestore_methods.dart';

class PostDetailsPage extends StatefulWidget {
  final snap;
  final likesNum;
  final String title;
  final String image;
  final String author;
  final String date;
  final String content;
  PostDetailsPage(
      {Key? key,
      required this.snap,
      required this.likesNum,
      required this.title,
      required this.image,
      required this.author,
      required this.date,
      required this.content});

  @override
  State<PostDetailsPage> createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
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
                widget.title,
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
                  Text('${widget.author}, '),
                  Text(
                    widget.date,
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
                        '${widget.likesNum} polubień',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w100),
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark_add_outlined),
                        onPressed: () async {
                          await FirestoreMethods().likePost(
                              widget.snap['postID'],
                              FirebaseAuth.instance.currentUser!.uid,
                              widget.snap['likes']);
                        },
                        color: Colors.grey,
                        iconSize: 28,
                        splashRadius: 24,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(widget.image),
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: widget.content[0],
                    style: TextStyle(color: Colors.black, fontSize: 32)),
                TextSpan(
                    text: widget.content.substring(1),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.5,
                        wordSpacing: 2)),
              ])),
              SizedBox(
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
