import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:genecar/widgets/post_cell_widget.dart';
import 'package:genecar/pages/Blog/post_details_page.dart';
import 'package:intl/intl.dart';

final _format = new DateFormat('dd.MM.yyyy HH:MM');

class PostCard extends StatelessWidget {
  final snap;
  const PostCard({Key? key, required this.snap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return PostCellWidget(
              title: snap['title'],
              image: snap['photoUrl'],
              author: ((snapshot.data?.docs
                      .where((element) => element.id == snap['uid'])
                      .first)!['name'])
                  .toString(),
              date: (_format.format(snap['datePublished'].toDate())).toString(),
              onClick: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => PostDetailsPage(
                    title: snap['title'],
                    image: snap['photoUrl'],
                    author: ((snapshot.data?.docs
                            .where((element) => element.id == snap['uid'])
                            .first)!['name'])
                        .toString(),
                    date: (_format.format(snap['datePublished'].toDate()))
                        .toString(),
                    content: snap['content'],
                  ),
                ));
              });
        });
  }
}
