import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donationapp/services/donation_services.dart';
import 'package:donationapp/widgets/donation_card.dart';

class AcceptanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final donationService = Provider.of<DonationService>(context);
    final donations = donationService.donations; // Assuming donations is a property in DonationService

    return Scaffold(
      body: ListView.builder(
        itemCount: donations.length,
        itemBuilder: (context, index) {
          return DonationCard(donation: donations[index]);
        },
      ),
    );
  }
}
