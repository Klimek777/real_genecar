import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:genecar/widgets/post_cell_widget.dart';
import 'package:genecar/pages/Blog/post_details_page.dart';
import 'package:intl/intl.dart';

final _format = new DateFormat('dd.MM.yyyy HH:mm');

class PostCard extends StatefulWidget {
  final snap;
  const PostCard({Key? key, required this.snap}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
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
              title: widget.snap['title'],
              image: widget.snap['photoUrl'],
              author: ((snapshot.data?.docs
                      .where((element) => element.id == widget.snap['uid'])
                      .first)!['name'])
                  .toString(),
              date: (_format.format(widget.snap['datePublished'].toDate()))
                  .toString(),
              onClick: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('posts')
                          .snapshots(),
                      builder: (context,
                          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                              snapshot_2) {
                        return PostDetailsPage(
                          likesNum: snapshot_2.data?.docs
                              .where((element) =>
                                  element.id == widget.snap['postID'])
                              .first
                              .data()['likes']
                              .length,
                          snap: snapshot_2.data?.docs
                              .where((element) =>
                                  element.id == widget.snap['postID'])
                              .first
                              .data(),
                          title: widget.snap['title'],
                          image: widget.snap['photoUrl'],
                          author: ((snapshot.data?.docs
                                  .where((element) =>
                                      element.id == widget.snap['uid'])
                                  .first)!['name'])
                              .toString(),
                          date: (_format.format(
                                  widget.snap['datePublished'].toDate()))
                              .toString(),
                          content: widget.snap['content'],
                        );
                      }),
                ));
              });
        });
  }
}
