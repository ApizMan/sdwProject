import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/application_staff_body.dart';

class ApplicationStaff extends StatefulWidget {
  const ApplicationStaff({super.key});

  @override
  State<ApplicationStaff> createState() => _ApplicationStaffState();
}

class _ApplicationStaffState extends State<ApplicationStaff> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: ApplicationStaffBody(),
      title: "Approval Application",
      haveBackButton: true,
      backButton: Icons.arrow_back,
    );
  }
}
