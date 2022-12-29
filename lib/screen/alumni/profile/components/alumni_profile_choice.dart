import 'package:fkaa_donation/public_component/custom_button_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfileChoice extends StatefulWidget {
  const AlumniProfileChoice({super.key});

  @override
  State<AlumniProfileChoice> createState() => _AlumniProfileChoiceState();
}

class _AlumniProfileChoiceState extends State<AlumniProfileChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 30,
        // ),
        CustomButtonNavigator(
          icon_navigate: Icons.arrow_forward_ios,
          icon_prefix: Icons.person,
          text: "My Profile",
        ),
        SizedBox(
          height: 15,
        ),
        CustomButtonNavigator(
          icon_navigate: Icons.arrow_forward_ios,
          icon_prefix: Icons.money,
          text: "Donation",
        ),
        SizedBox(
          height: 15,
        ),
        CustomButtonNavigator(
          icon_navigate: Icons.arrow_forward_ios,
          icon_prefix: Icons.logout,
          text: "Logout",
        ),
      ],
    );
  }
}
