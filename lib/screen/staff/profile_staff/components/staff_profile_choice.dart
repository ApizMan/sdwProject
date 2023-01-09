import 'package:firebase_auth/firebase_auth.dart';
import 'package:fkaa_donation/public_component/custom_button_navigator.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/edit_profile/edit_alumni_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StaffProfileChoice extends StatefulWidget {
  const StaffProfileChoice({super.key});

  @override
  State<StaffProfileChoice> createState() => _StaffProfileChoiceState();
}

class _StaffProfileChoiceState extends State<StaffProfileChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 30,
        // ),
        CustomButtonNavigator(
          navigation: true,
          icon_navigate: Icons.arrow_forward_ios,
          icon_prefix: Icons.person,
          text: "My Profile",
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () => FirebaseAuth.instance.signOut(),
          child: CustomButtonNavigator(
            navigation: true,
            icon_navigate: Icons.arrow_forward_ios,
            icon_prefix: Icons.logout,
            text: "Logout",
          ),
        ),
      ],
    );
  }
}
