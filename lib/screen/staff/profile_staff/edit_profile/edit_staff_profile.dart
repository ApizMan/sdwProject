import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/edit_profile/components/edit_alumni_profile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStaffProfile extends StatefulWidget {
  const EditStaffProfile({super.key});

  @override
  State<EditStaffProfile> createState() => _EditStaffProfileState();
}

class _EditStaffProfileState extends State<EditStaffProfile> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      haveBackButton: true,
      backButton: Icons.arrow_back,
      body: EditAlumniProfileBody(),
      title: "My Profile",
    );
  }
}
