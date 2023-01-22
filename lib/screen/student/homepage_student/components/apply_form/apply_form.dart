import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../public_component/custom_layout.dart';
import 'components/apply_form_body.dart';

class ApplyForm extends StatefulWidget {
  ApplyForm({super.key});

  @override
  State<ApplyForm> createState() => _ApplyFormState();
}

class _ApplyFormState extends State<ApplyForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AspectRatio(
        aspectRatio: 6 / 11.7,
        child: CustomLayout(
          body: ApplyFormBody(),
          title: "E-Application",
          haveBackButton: true,
          backButton: Icons.arrow_back,
        ),
      ),
    );
  }
}
