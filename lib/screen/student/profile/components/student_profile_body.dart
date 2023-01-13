import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/student/profile/components/student_profile_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentProfileBody extends StatefulWidget {
  const StudentProfileBody({super.key});

  @override
  State<StudentProfileBody> createState() => _StudentProfileBodyState();
}

class _StudentProfileBodyState extends State<StudentProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: AspectRatio(
        aspectRatio: 9 / 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      offset: Offset.fromDirection(10, 2.0),
                      blurRadius: 12,
                      color: kBlack,
                      spreadRadius: 2)
                ],
              ),
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.25,
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: kBlack,
                child: Icon(
                  Icons.person_rounded,
                  color: kWhite,
                  size: 100,
                ),
              ),
            ),
            const StudentProfileContent(),
          ],
        ),
      ),
    );
  }
}
