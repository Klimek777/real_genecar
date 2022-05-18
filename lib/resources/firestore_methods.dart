import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:genecar/models/offer.dart';
import 'package:genecar/models/post.dart';
import 'package:genecar/pages/Blog/blog.dart';
import 'package:genecar/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final _fireStore = FirebaseFirestore.instance;
  var wyn = 0;
  Future<void> getNum() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _fireStore.collection('posts').get();

    // Get data from docs and convert map to List
    // final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    //for a specific field
    final allData = querySnapshot.docs.map((doc) => doc.get('postID')).toList();
    for (int i = 0; i <= allData.length; i++) {
      for (int j = 0; j < allData.length; j++) {
        if (allData[j].substring(4) == i.toString()) {
          j = allData.length;
        } else if (j == allData.length - 1) {
          wyn = i;
          return;
        }
      }
    }
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
      String uid, String title, Uint8List file, String content) async {
    String res = "Some error occured!";
    try {
      getNum();
      var postsList;
      String photoUrl =
          await StorageMethods().uploadPostToStorage('posts', file, true);

      String postID = 'post' + wyn.toString();

      Post post = Post(
          uid: uid,
          title: title,
          content: content,
          postID: postID,
          datePublished: DateTime.now(),
          photoUrl: photoUrl,
          viewsNum: 1000,
          likes: []);

      _firestore.collection('posts').doc(postID).set(post.toJson());
      res = "Success!";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> uploadOffer(
    String uid,
    String offerID,
    String recommended,
    String mark,
    String model,
    String prodYear,
    String generation,
    String seatsNum,
    String category,
    String fuel,
    String color,
    String gearbox,
    String drive,
    String condition,
    String version,
    String registeredPL,
    String body,
    int price,
    int ccm,
    int horses,
    int mileage,
    String vin,
    List additional,
    Uint8List photos,
    String description,
    String phoneNum,
    datePublished,
    int viewsNum,
  ) async {
    String res = "Some error occured!";
    try {
      String photoUrl =
          await StorageMethods().uploadOfferToStorage('offers', photos, true);

      String postID = Uuid().v1();

      Offer post = Offer(
        uid: uid,
        offerID: offerID,
        recommended: recommended,
        mark: mark,
        model: model,
        prodYear: prodYear,
        generation: generation,
        seatsNum: seatsNum,
        category: category,
        fuel: fuel,
        color: color,
        gearbox: gearbox,
        drive: drive,
        condition: condition,
        version: version,
        registeredPL: registeredPL,
        body: body,
        price: price,
        ccm: ccm,
        horses: horses,
        mileage: mileage,
        vin: vin,
        additional: additional,
        photos: photos,
        description: description,
        phoneNum: phoneNum,
        datePublished: datePublished,
        viewsNum: viewsNum,
      );

      _firestore.collection('offers').doc(postID).set(post.toJson());
      res = "Success!";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> likePost(String postId, String uid, List likes) async {
    try {
      if (likes.contains(uid)) {
        await _fireStore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayRemove([uid]),
        });
      } else {
        await _fireStore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayUnion([uid]),
        });
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }
}
