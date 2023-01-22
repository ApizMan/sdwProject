import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/report_staff_body.dart';

class ReportStaff extends StatefulWidget {
  const ReportStaff({super.key});

  @override
  State<ReportStaff> createState() => _ReportStaffState();
}

class _ReportStaffState extends State<ReportStaff> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: ReportStaffBody(),
      title: "Reports",
      haveBackButton: true,
      backButton: Icons.arrow_back,
    );
  }
}
