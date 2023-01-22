import 'package:fkaa_donation/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReportStaffBody extends StatefulWidget {
  const ReportStaffBody({super.key});

  @override
  State<ReportStaffBody> createState() => _ReportStaffBodyState();
}

class _ReportStaffBodyState extends State<ReportStaffBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 2,
            child: Text(
              "Yearly",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              softWrap: true,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Total Number of Students Applied")],
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  offset: Offset.fromDirection(10, 2.0),
                  color: Colors.black26,
                  spreadRadius: 5.0,
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Total Amount of Transaction (RM)")],
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  offset: Offset.fromDirection(10, 2.0),
                  color: Colors.black26,
                  spreadRadius: 5.0,
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Total Number of Alumni Registered")],
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  offset: Offset.fromDirection(10, 2.0),
                  color: Colors.black26,
                  spreadRadius: 5.0,
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2,
            child: Text(
              "Monthly",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              softWrap: true,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Total Amount of Monthly Transaction (RM)")],
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  offset: Offset.fromDirection(10, 2.0),
                  color: Colors.black26,
                  spreadRadius: 5.0,
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
