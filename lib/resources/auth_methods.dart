import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:genecar/models/user.dart' as model;
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot snap =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(snap);
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String repeatPassword,
    required String name,
    required String phoneNum,
    required bool rulesAccepted,
  }) async {
    String res =
        "Nie udało się zarejestrować. Sprawdź poprawność podanych danych!";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          repeatPassword.isNotEmpty ||
          name.isNotEmpty ||
          phoneNum.isNotEmpty) {
        if (password == repeatPassword) {
          if (rulesAccepted == true) {
            UserCredential cred = await _auth.createUserWithEmailAndPassword(
                email: email, password: password);

            print(cred.user!.uid);

            model.User user = model.User(
              email: email,
              name: name,
              phoneNum: phoneNum,
              uid: cred.user!.uid,
            );

            await _firestore
                .collection('users')
                .doc(cred.user!.uid)
                .set(user.toJson());

            res = "Success!";
          } else {
            res = 'Nalezy zaakceptować regulamin uslugi.';
          }
        } else {
          res = 'Podane hasła nie są ze sobą zgodne!';
        }
      } else {
        res = 'Nalezy wypełnić wszystkie pola!';
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          res = 'Podany adres e-mail jest zajęty!';
          break;
        case 'invalid-email':
          res = 'Nieprawidłowy adres e-mail!';
          break;
        case 'operation-not-allowed':
          res = 'Coś poszło nie tak... Spróbuj ponownie!';
          break;
        case 'weak-password':
          res = 'Hasło za krótkie!';
          break;
        default:
          res =
              'Formularz wypełniony nieprawidłowo. Sprawdź poprawność danych!';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> loginUser(
      {required String email, required String password}) async {
    String res =
        "Nie udało się zalogować. Sprawdź poprawność podanych danych uytkownika!";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "Success!";
      } else {
        res = "Nalezy wypełnić pola e-maila oraz hasła!";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        res = 'Nie znaleziono uytkownika z takim adresem e-mail!';
      } else if (e.code == 'wrong-password') {
        res = 'Hasło niepoprawne!';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
