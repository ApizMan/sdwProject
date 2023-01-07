import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/application/components/application_form/components/application_form_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplicationFormAlumni extends StatefulWidget {
  const ApplicationFormAlumni({super.key});

  @override
  State<ApplicationFormAlumni> createState() => _ApplicationFormAlumniState();
}

class _ApplicationFormAlumniState extends State<ApplicationFormAlumni> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 7.4,
      child: CustomLayout(
        body: ApplicationFormBody(),
        title: "Application Recommendation",
        haveBackButton: true,
        backButton: Icons.arrow_back,
      ),
    );
  }
}
