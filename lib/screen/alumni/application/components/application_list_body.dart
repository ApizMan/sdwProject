import 'package:fkaa_donation/public_component/custom_card.dart';
import 'package:fkaa_donation/screen/alumni/application/components/application_form/application_form_alumni.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplicationListBody extends StatefulWidget {
  const ApplicationListBody({super.key});

  @override
  State<ApplicationListBody> createState() => _ApplicationListBodyState();
}

class _ApplicationListBodyState extends State<ApplicationListBody> {
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
          aspectRatio: 6 / 7.4,
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
                onPressDetail: null,
                onPressAccept: ApplicationFormAlumni(),
                onPressDecline: ApplicationFormAlumni(),
              );
            },
          ),
        ),
      ],
    );
  }
}
