// ignore_for_file: deprecated_member_use

import 'package:fkaa_donation/alumni/homepage_alumni/components/body_homepage.dart';
import 'package:fkaa_donation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageAlumni extends StatefulWidget {
  const HomePageAlumni({super.key});

  @override
  State<HomePageAlumni> createState() => _HomePageAlumniState();
}

class _HomePageAlumniState extends State<HomePageAlumni> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 2.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appBarBackground,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.person,
                              color: appBarBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 23,
                        ),
                        Text(
                          "FKAA E-Donation",
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
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 2.0,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: BodyHomepage(),
                  ),
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
        ),
      ],
    );
  }
}
