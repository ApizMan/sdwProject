import 'package:fkaa_donation/screen/alumni/profile/components/alumni_profile_content.dart';
import 'package:fkaa_donation/screen/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlumniProfileBody extends StatefulWidget {
  const AlumniProfileBody({super.key});

  @override
  State<AlumniProfileBody> createState() => _AlumniProfileBodyState();
}

class _AlumniProfileBodyState extends State<AlumniProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
          const AlumniProfileContent(),
        ],
      ),
    );
  }
}
