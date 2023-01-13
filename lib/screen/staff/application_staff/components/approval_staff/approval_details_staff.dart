import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../public_component/custom_layout.dart';
import 'components/approval_details_staff_body.dart';

class ApprovalDetailsStaff extends StatefulWidget {
  ApprovalDetailsStaff({super.key});

  @override
  State<ApprovalDetailsStaff> createState() => _ApprovalDetailsStaffState();
}

class _ApprovalDetailsStaffState extends State<ApprovalDetailsStaff> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AspectRatio(
        aspectRatio: 6 / 11.7,
        child: CustomLayout(
          body: ApprovalDetailsStaffBody(),
          title: "Approval",
          haveBackButton: true,
          backButton: Icons.arrow_back,
        ),
      ),
    );
  }
}
