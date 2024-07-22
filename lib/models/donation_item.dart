import 'package:cloud_firestore/cloud_firestore.dart';

class DonationItem {
  final String id;
  final String title;
  final String description;
  final String status;

  DonationItem({required this.id, required this.title, required this.description, this.status = 'available'});

  factory DonationItem.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return DonationItem(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      status: data['status'] ?? 'available',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'status': status,
    };
  }
}