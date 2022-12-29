// ignore_for_file: deprecated_member_use
import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/homepage_alumni/components/body_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageAlumni extends StatefulWidget {
  const HomePageAlumni({super.key});

  @override
  State<HomePageAlumni> createState() => _HomePageAlumniState();
}

class _HomePageAlumniState extends State<HomePageAlumni> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: BodyHomepage(),
      title: "FKAA E-Donation",
      centerTitle: 100,
    );
  }
}
