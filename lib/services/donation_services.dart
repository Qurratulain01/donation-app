import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/donation_item.dart';

class DonationService extends ChangeNotifier {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<DonationItem>> getDonations() async {
    final snapshot = await _db.collection('donations').get();
    return snapshot.docs.map((doc) => DonationItem.fromFirestore(doc)).toList();
  }

  Future<List<DonationItem>> getAvailableDonations() async {
    final snapshot = await _db.collection('donations').where('status', isEqualTo: 'available').get();
    return snapshot.docs.map((doc) => DonationItem.fromFirestore(doc)).toList();
  }

  Future<void> addDonation(DonationItem item) async {
    await _db.collection('donations').add(item.toMap());
  }
}