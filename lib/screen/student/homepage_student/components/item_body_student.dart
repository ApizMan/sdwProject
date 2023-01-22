import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/navigation/student/navigation_student.dart';
import 'package:fkaa_donation/screen/student/homepage_student/components/apply_form/apply_form.dart';
import 'package:fkaa_donation/screen/student/homepage_student/components/status_student/status_student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemBodyStudent extends StatefulWidget {
  const ItemBodyStudent({super.key});

  @override
  State<ItemBodyStudent> createState() => _ItemBodyStudentState();
}

class _ItemBodyStudentState extends State<ItemBodyStudent> {
  List<String> imageCard = [
    'assets/images/imgCard.png',
    'assets/images/imgCard3.png',
    'assets/images/imgCard.png',
  ];

  List<String> namecard = [
    "Apply for Donation",
    "Check Your Status",
  ];

  List<String> namecard2 = [
    "Apply Now",
    "Check It Now",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: Image(
                            image: AssetImage(
                              imageCard[0],
                            ),
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                  ),
                  Positioned(
                    top: 150,
                    left: 45,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(namecard[0]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                namecard2[0],
                                style: TextStyle(color: Colors.orange[200]),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_circle_right_outlined,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ApplyForm(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: boxHomepage,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: Image(
                            image: AssetImage(
                              imageCard[1],
                            ),
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                  ),
                  Positioned(
                    top: 150,
                    left: 45,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(namecard[1]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                namecard2[1],
                                style: TextStyle(color: Colors.orange[300]),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_circle_right_outlined,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => StatusStudent(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: boxHomepage,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }
}
