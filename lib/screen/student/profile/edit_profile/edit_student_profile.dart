import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/student/profile/edit_profile/components/edit_student_profile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStudentProfile extends StatefulWidget {
  const EditStudentProfile({super.key});

  @override
  State<EditStudentProfile> createState() => _EditStudentProfileState();
}

class _EditStudentProfileState extends State<EditStudentProfile> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      haveBackButton: true,
      backButton: Icons.arrow_back,
      body: EditStudentProfileBody(),
      title: "My Profile",
    );
  }
}
