import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/donation/components/donation_alumni_body.dart';
import 'package:fkaa_donation/screen/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationAlumni extends StatefulWidget {
  const DonationAlumni({super.key});

  @override
  State<DonationAlumni> createState() => _DonationAlumniState();
}

class _DonationAlumniState extends State<DonationAlumni> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
      body: DonationAlumniBody(),
      title: "Donation",
      centerTitle: 140,
    );
  }
}
