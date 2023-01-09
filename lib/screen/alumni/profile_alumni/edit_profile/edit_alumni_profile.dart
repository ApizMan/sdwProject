import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/edit_profile/components/edit_alumni_profile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAlumniProfile extends StatefulWidget {
  const EditAlumniProfile({super.key});

  @override
  State<EditAlumniProfile> createState() => _EditAlumniProfileState();
}

class _EditAlumniProfileState extends State<EditAlumniProfile> {
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
