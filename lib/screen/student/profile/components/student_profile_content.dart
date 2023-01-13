import 'package:fkaa_donation/screen/student/profile/components/student_profile_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentProfileContent extends StatefulWidget {
  const StudentProfileContent({super.key});

  @override
  State<StudentProfileContent> createState() => _StudentProfileContentState();
}

class _StudentProfileContentState extends State<StudentProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              detailUser(context),
              const StudentProfileChoice(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox detailUser(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Akmal Azhar",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "akmalazhar@alumni.ump.edu.my",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
