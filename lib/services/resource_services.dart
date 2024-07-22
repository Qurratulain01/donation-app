import 'package:cloud_firestore/cloud_firestore.dart';

class ResourceService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getResources() async {
    final snapshot = await _db.collection('resources').get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> addResource(Map<String, dynamic> resource) async {
    await _db.collection('resources').add(resource);
  }
}