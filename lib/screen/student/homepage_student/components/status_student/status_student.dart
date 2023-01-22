import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../public_component/custom_layout.dart';
import 'components/status_student_body.dart';

class StatusStudent extends StatefulWidget {
  StatusStudent({super.key});

  @override
  State<StatusStudent> createState() => _StatusStudentState();
}

class _StatusStudentState extends State<StatusStudent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AspectRatio(
        aspectRatio: 6 / 11.7,
        child: CustomLayout(
          body: StatusStudentBody(),
          title: "Status",
          haveBackButton: true,
          backButton: Icons.arrow_back,
        ),
      ),
    );
  }
}
