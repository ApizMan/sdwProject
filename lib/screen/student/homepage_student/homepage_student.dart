// ignore_for_file: deprecated_member_use
import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/student/homepage_student/components/body_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      haveBackButton: false,
      body: BodyHomepage(),
      title: "FKAA E-Donation",
    );
  }
}
