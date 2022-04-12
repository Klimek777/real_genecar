import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:genecar/models/post.dart';
import 'package:genecar/pages/Blog/blog.dart';
import 'package:genecar/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
      String uid, String title, Uint8List file, String content) async {
    String res = "Some error occured!";
    try {
      String photoUrl =
          await StorageMethods().uploadPostToStorage('posts', file, true);

      String postID = const Uuid().v1();

      Post post = Post(
          uid: uid,
          title: title,
          content: content,
          postID: postID,
          datePublished: DateTime.now(),
          photoUrl: photoUrl,
          viewsNum: 1000,
          likesNum: 200);

      _firestore.collection('posts').doc(postID).set(post.toJson());
      res = "Success!";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
