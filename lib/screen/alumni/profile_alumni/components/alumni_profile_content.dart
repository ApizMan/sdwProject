import 'package:firebase_auth/firebase_auth.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/components/alumni_profile_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfileContent extends StatefulWidget {
  const AlumniProfileContent({super.key});

  @override
  State<AlumniProfileContent> createState() => _AlumniProfileContentState();
}

class _AlumniProfileContentState extends State<AlumniProfileContent> {
  final userEmail = FirebaseAuth.instance.currentUser!;

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
              const AlumniProfileChoice(),
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
            userEmail.email!,
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
