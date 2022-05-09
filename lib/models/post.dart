import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Post {
  final String uid;
  final String title;
  final String content;
  final String postID;
  final datePublished;
  final String photoUrl;
  final int viewsNum;
  final List likes;

  const Post({
    required this.uid,
    required this.title,
    required this.content,
    required this.postID,
    required this.datePublished,
    required this.photoUrl,
    required this.viewsNum,
    required this.likes,
  });
  Map<String, dynamic> toJson() => {
        "uid": uid,
        "title": title,
        "content": content,
        "postID": postID,
        "datePublished": datePublished,
        "photoUrl": photoUrl,
        "viewsNum": viewsNum,
        "likes": likes,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      uid: snapshot['email'],
      title: snapshot['title'],
      content: snapshot['content'],
      postID: snapshot['postID'],
      datePublished: snapshot['datePublished'],
      photoUrl: snapshot['photoUrl'],
      viewsNum: snapshot['viewsNum'],
      likes: snapshot['likes'],
    );
  }
}
