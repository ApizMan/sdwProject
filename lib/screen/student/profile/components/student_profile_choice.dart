import 'package:fkaa_donation/public_component/custom_button_navigator.dart';
import 'package:fkaa_donation/screen/student/profile/edit_profile/edit_student_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentProfileChoice extends StatefulWidget {
  const StudentProfileChoice({super.key});

  @override
  State<StudentProfileChoice> createState() => _StudentProfileChoiceState();
}

class _StudentProfileChoiceState extends State<StudentProfileChoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 30,
        // ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditStudentProfile(),
                ));
          },
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

        CustomButtonNavigator(
          navigation: true,
          icon_navigate: Icons.arrow_forward_ios,
          icon_prefix: Icons.logout,
          text: "Logout",
        ),
      ],
    );
  }
}
