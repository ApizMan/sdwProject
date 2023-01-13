// ignore_for_file: deprecated_member_use
import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/staff/homepage_staff/components/body_homepage_staff.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageStaff extends StatefulWidget {
  const HomePageStaff({super.key});

  @override
  State<HomePageStaff> createState() => _HomePageStaffState();
}

class _HomePageStaffState extends State<HomePageStaff> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      haveBackButton: false,
      body: BodyHomepageStaff(),
      title: "FKAA E-Donation",
    );
  }
}
