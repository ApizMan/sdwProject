import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/anonymous/components/donation_anonymous_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationAnonymous extends StatefulWidget {
  const DonationAnonymous({super.key});

  @override
  State<DonationAnonymous> createState() => _DonationAnonymousState();
}

class _DonationAnonymousState extends State<DonationAnonymous> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
      haveBackButton: false,
      body: DonationAnonymousBody(),
      title: "Donation",
    );
  }
}
