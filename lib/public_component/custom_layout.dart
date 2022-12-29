import 'package:fkaa_donation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomLayout extends StatefulWidget {
  final Widget body;
  final String title;
  final double centerTitle;
  const CustomLayout(
      {super.key,
      required this.body,
      required this.title,
      required this.centerTitle});

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: widget.centerTitle),
                      child: Text(
                        widget.title,
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: widget.body,
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
    );
    ;
  }
}
