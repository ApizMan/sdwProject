import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/student/profile/edit_profile/components/edit_student_profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStudentProfileBody extends StatefulWidget {
  const EditStudentProfileBody({super.key});

  @override
  State<EditStudentProfileBody> createState() => _EditStudentProfileBodyState();
}

class _EditStudentProfileBodyState extends State<EditStudentProfileBody> {
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
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
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
                  Positioned(
                    top: 80,
                    left: 80,
                    bottom: 0,
                    child: Container(
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
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: appBarBackground,
                        child: Icon(
                          Icons.camera_enhance_rounded,
                          color: kBlack,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const EditStudentProfileItem(),
          ],
        ),
      ),
    );
    ;
  }
}
