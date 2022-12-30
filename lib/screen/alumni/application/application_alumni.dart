import 'package:fkaa_donation/public_component/custom_layout.dart';
import 'package:fkaa_donation/screen/alumni/application/components/application_alumni_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplicationAlumni extends StatefulWidget {
  const ApplicationAlumni({super.key});

  @override
  State<ApplicationAlumni> createState() => _ApplicationAlumniState();
}

class _ApplicationAlumniState extends State<ApplicationAlumni> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      haveBackButton: false,
      body: ApplicationAlumniBody(),
      title: "Application Recommendation",
      centerTitle: 60,
    );
  }
}
