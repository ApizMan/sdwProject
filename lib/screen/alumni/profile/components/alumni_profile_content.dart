import 'package:fkaa_donation/screen/alumni/profile/components/alumni_profile_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfileContent extends StatefulWidget {
  const AlumniProfileContent({super.key});

  @override
  State<AlumniProfileContent> createState() => _AlumniProfileContentState();
}

class _AlumniProfileContentState extends State<AlumniProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.37,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailUser(context),
            const AlumniProfileChoice(),
          ],
        ),
      ),
    );
  }

  SizedBox detailUser(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
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