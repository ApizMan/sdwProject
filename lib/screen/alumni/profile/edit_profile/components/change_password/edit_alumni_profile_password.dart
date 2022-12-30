import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/profile/edit_profile/components/change_password/components/change_password_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAlumniProfilePassword extends StatefulWidget {
  const EditAlumniProfilePassword({super.key});

  @override
  State<EditAlumniProfilePassword> createState() =>
      _EditAlumniProfilePasswordState();
}

class _EditAlumniProfilePasswordState extends State<EditAlumniProfilePassword> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      body: ChangePasswordBody(),
      title: "New Password",
      centerTitle: 110,
      haveBackButton: true,
      backButton: Icons.arrow_back,
    );
  }
}
