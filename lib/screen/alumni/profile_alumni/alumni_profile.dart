import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/components/alumni_profile_body.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfile extends StatefulWidget {
  const AlumniProfile({super.key});

  @override
  State<AlumniProfile> createState() => _AlumniProfileState();
}

class _AlumniProfileState extends State<AlumniProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomLayout(
        haveBackButton: false,
        body: AlumniProfileBody(),
        title: "Profile",
      ),
    );
  }
}
