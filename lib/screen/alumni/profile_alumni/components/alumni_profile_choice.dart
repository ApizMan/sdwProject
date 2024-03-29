import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fkaa_donation/main.dart';
import 'package:fkaa_donation/public_component/custom_button_navigator.dart';
import 'package:fkaa_donation/screen/alumni/donation_alumni/donation_alumni.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/edit_profile/edit_alumni_profile.dart';
import 'package:fkaa_donation/screen/login/login.dart';
import 'package:fkaa_donation/screen/navigation/alumni/navigation_alumni.dart';
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
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditAlumniProfile(),
            ),
          ),
          child: CustomButtonNavigator(
            navigation: true,
            icon_navigate: Icons.arrow_forward_ios,
            icon_prefix: Icons.person,
            text: "My Profile",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigationAlumni(selectNavDefault: 2),
                ));
          },
          child: CustomButtonNavigator(
            navigation: true,
            icon_navigate: Icons.arrow_forward_ios,
            icon_prefix: Icons.money,
            text: "Donation",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Login(),
              ));
            });
          },
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
