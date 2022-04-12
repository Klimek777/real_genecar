import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  final String email;
  final String name;
  final String phoneNum;
  final String uid;

  const User({
    required this.email,
    required this.name,
    required this.phoneNum,
    required this.uid,
  });
  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "phoneNum": phoneNum,
        "uid": uid,
      };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      email: snapshot['email'],
      uid: snapshot['uid'],
      name: snapshot['name'],
      phoneNum: snapshot['phoneNum'],
    );
  }
}
