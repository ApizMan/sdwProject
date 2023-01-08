import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/application_alumni/components/application_form/components/application_form_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/application_form_body_staff.dart';

class ApplicationFormStaff extends StatefulWidget {
  const ApplicationFormStaff({super.key});

  @override
  State<ApplicationFormStaff> createState() => _ApplicationFormStaffState();
}

class _ApplicationFormStaffState extends State<ApplicationFormStaff> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AspectRatio(
        aspectRatio: 6 / 11.7,
        child: CustomLayout(
          body: ApplicationFormBodyStaff(),
          title: "Recommendation Notes",
          haveBackButton: true,
          backButton: Icons.arrow_back,
        ),
      ),
    );
  }
}
