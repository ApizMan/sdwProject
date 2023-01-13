import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/staff/profile_staff/edit_profile/components/change_password/components/change_password_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStaffProfilePassword extends StatefulWidget {
  const EditStaffProfilePassword({super.key});

  @override
  State<EditStaffProfilePassword> createState() =>
      _EditStaffProfilePasswordState();
}

class _EditStaffProfilePasswordState extends State<EditStaffProfilePassword> {
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
