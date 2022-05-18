import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Offer {
  final String uid;
  final String offerID;
  final String recommended;
  final String mark;
  final String model;
  final String prodYear;
  final String generation;
  final String seatsNum;
  final String category;
  final String fuel;
  final String color;
  final String gearbox;
  final String drive;
  final String condition;
  final String version;
  final String registeredPL;
  final String body;
  final int price;
  final int ccm;
  final int horses;
  final int mileage;
  final String vin;
  final List additional;
  final List photos;
  final String description;
  final int viewsNum;
  final String phoneNum;
  final datePublished;

  const Offer({
    required this.uid,
    required this.offerID,
    required this.recommended,
    required this.mark,
    required this.model,
    required this.prodYear,
    required this.generation,
    required this.seatsNum,
    required this.category,
    required this.fuel,
    required this.color,
    required this.gearbox,
    required this.drive,
    required this.condition,
    required this.version,
    required this.registeredPL,
    required this.body,
    required this.price,
    required this.ccm,
    required this.horses,
    required this.mileage,
    required this.vin,
    required this.additional,
    required this.photos,
    required this.description,
    required this.phoneNum,
    required this.datePublished,
    required this.viewsNum,
  });
  Map<String, dynamic> toJson() => {
        "uid": uid,
        "offerID": offerID,
        "recommended": recommended,
        "mark": mark,
        "model": model,
        "prodYear": prodYear,
        "generation": generation,
        "seatsNum": seatsNum,
        "category": category,
        "fuel": fuel,
        "color": color,
        "gearbox": gearbox,
        "drive": drive,
        "condition": condition,
        "version": version,
        "registerPL": registeredPL,
        "body": body,
        "price": price,
        "ccm": ccm,
        "horses": horses,
        "mileage": mileage,
        "vin": vin,
        "additional": additional,
        "photos": photos,
        "description": description,
        "phoneNum": phoneNum,
        "datePublished": datePublished,
        "vievsNum": viewsNum,
      };
  static Offer fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Offer(
      uid: snapshot['uid'],
      offerID: snapshot['offerID'],
      recommended: snapshot['recommended'],
      mark: snapshot['mark'],
      model: snapshot['model'],
      prodYear: snapshot['prodYear'],
      generation: snapshot['generation'],
      seatsNum: snapshot['seatsNum'],
      category: snapshot['category'],
      fuel: snapshot['fuel'],
      color: snapshot['color'],
      gearbox: snapshot['gearbox'],
      drive: snapshot['drive'],
      condition: snapshot['condition'],
      version: snapshot['version'],
      registeredPL: snapshot['registeredPL'],
      body: snapshot['body'],
      price: snapshot['price'],
      ccm: snapshot['ccm'],
      horses: snapshot['horses'],
      mileage: snapshot['mileage'],
      vin: snapshot['vin'],
      additional: snapshot['additional'],
      photos: snapshot['photos'],
      description: snapshot['description'],
      phoneNum: snapshot['phoneNum'],
      datePublished: snapshot['datePublished'],
      viewsNum: snapshot['viewsNum'],
    );
  }
}
