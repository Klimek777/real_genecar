import 'package:flutter/material.dart';

class User {
  final String email;
  final String password;
  final String name;
  final String phoneNum;
  final String uid;

  const User({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNum,
    required this.uid,
  });
  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "name": name,
        "phoneNum": phoneNum,
        "uid": uid,
      };
}
