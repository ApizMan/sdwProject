import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/student/profile/components/student_profile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomLayout(
        haveBackButton: false,
        body: StudentProfileBody(),
        title: "Profile",
      ),
    );
  }
}
