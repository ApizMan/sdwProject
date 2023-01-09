import 'package:fkaa_donation/screen/alumni/application_alumni/components/application_list_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplicationAlumniBody extends StatefulWidget {
  const ApplicationAlumniBody({super.key});

  @override
  State<ApplicationAlumniBody> createState() => _ApplicationAlumniBodyState();
}

class _ApplicationAlumniBodyState extends State<ApplicationAlumniBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "List of Student's Application",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.blueGrey.shade500,
                    blurRadius: 15,
                    offset: Offset.fromDirection(10, -3.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        const ApplicationListBody(),
      ],
    );
  }
}
