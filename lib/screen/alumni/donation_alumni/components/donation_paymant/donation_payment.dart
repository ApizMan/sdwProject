import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/donation_alumni/components/donation_paymant/components/donation_payment_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationPayment extends StatefulWidget {
  const DonationPayment({super.key});

  @override
  State<DonationPayment> createState() => _DonationPaymentState();
}

class _DonationPaymentState extends State<DonationPayment> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: DonationPaymentBody(),
      title: "Donation Payment",
      haveBackButton: true,
      backButton: Icons.arrow_back,
    );
  }
}
