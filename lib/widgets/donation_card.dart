impimport 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final dynamic donation;

  const DonationCard({Key? key, required this.donation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(donation['title']),
        subtitle: Text(donation['description']),
      ),
    );
  }
}
