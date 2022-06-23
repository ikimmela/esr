import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class firestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future insertNote(
    String title,
    String full_name,
    String familysize,
    String house_number,
    String phone_number,
    String kebele,
    String email_adress,
    String userId,
  ) async {
    try {
      await firestore.collection('users').add({
        "title": title,
        "full_name": full_name,
        "familysize": familysize,
        "house_number": house_number,
        "phone_number": phone_number,
        "kebele": kebele,
        "email_adress": email_adress,
        "date": DateTime.now(),
        "userId": userId,
      });
    } catch (e) {}
  }
}
