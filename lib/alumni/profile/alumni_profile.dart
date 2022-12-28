import 'package:fkaa_donation/alumni/profile/components/alumni_profile_body.dart';
import 'package:fkaa_donation/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfile extends StatefulWidget {
  const AlumniProfile({super.key});

  @override
  State<AlumniProfile> createState() => _AlumniProfileState();
}

class _AlumniProfileState extends State<AlumniProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: appBarBackground,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.blueGrey.shade500,
                              blurRadius: 15,
                              offset: Offset.fromDirection(10, -3.0),
                            ),
                          ],
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 75,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: double.infinity,
              child: AlumniProfileBody(),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 2,
                  color: Colors.black12,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(11, 5.0),
                    color: Colors.black26,
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
