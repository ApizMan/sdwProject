import 'package:fkaa_donation/public_component/custom_card.dart';
import 'package:fkaa_donation/screen/alumni/application_alumni/components/application_form/application_form_alumni.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'application_form/application_form_staff.dart';
import 'approval_staff/approval_details_staff.dart';

class ApplicationListBodyStaff extends StatefulWidget {
  const ApplicationListBodyStaff({super.key});

  @override
  State<ApplicationListBodyStaff> createState() =>
      _ApplicationListBodyStaffState();
}

class _ApplicationListBodyStaffState extends State<ApplicationListBodyStaff> {
  List<String> name = [
    "Muhammad Ikhmal Akif Bin Ihtizam",
    "Nur Syuhadah Azlina Binti Zulkifli",
    "Ng Yuen Foo",
    "Selena Mahamez",
  ];

  List<String> timeHistory = [
    "45m",
    "15m",
    "5m",
    "45m",
    "15m",
  ];

  List<String> description = [
    "This student need money. Give them. Please give him, he so sad.",
    "This student is lied. Reject him.",
    "This student need money. Give them.",
    "This student is lied. Reject him.",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 1 / 7.4,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return CustomCard(
                name: name[index],
                iconTime: Icons.watch_later_outlined,
                time: timeHistory[index],
                description: description[index],
                textLink: "Click for details",
                onPressDetail: ApprovalDetailsStaff(),
                onPressAccept: ApplicationFormStaff(),
                onPressDecline: ApplicationFormStaff(),
              );
            },
          ),
        ),
      ],
    );
  }
}
