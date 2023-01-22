import 'package:fkaa_donation/screen/alumni/homepage_alumni/components/item_body_alumni.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyHomepageAlumni extends StatefulWidget {
  const BodyHomepageAlumni({super.key});

  @override
  State<BodyHomepageAlumni> createState() => _BodyHomepageAlumniState();
}

class _BodyHomepageAlumniState extends State<BodyHomepageAlumni> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
            ),
            Text(
              "Dashboard",
              style: TextStyle(
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
        SizedBox(
          height: 20,
        ),
        const ItemBodyAlumni(),
      ],
    );
  }
}
