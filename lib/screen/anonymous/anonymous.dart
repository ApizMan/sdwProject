import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/anonymous/components/donation_anonymous_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Anonymous extends StatefulWidget {
  const Anonymous({super.key});

  @override
  State<Anonymous> createState() => _AnonymousState();
}

class _AnonymousState extends State<Anonymous> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
      haveBackButton: false,
      body: DonationAnonymousBody(),
      title: "Donation",
    );
  }
}
