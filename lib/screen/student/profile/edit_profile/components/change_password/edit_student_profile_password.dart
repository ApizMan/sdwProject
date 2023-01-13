import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/student/profile/edit_profile/components/change_password/components/change_password_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStudentProfilePassword extends StatefulWidget {
  const EditStudentProfilePassword({super.key});

  @override
  State<EditStudentProfilePassword> createState() =>
      _EditStudentProfilePasswordState();
}

class _EditStudentProfilePasswordState
    extends State<EditStudentProfilePassword> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: ChangePasswordBody(),
      title: "New Password",
      haveBackButton: true,
      backButton: Icons.arrow_back,
    );
  }
}
