import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/public_component/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplicationFormBody extends StatefulWidget {
  const ApplicationFormBody({super.key});

  @override
  State<ApplicationFormBody> createState() => _ApplicationFormBodyState();
}

class _ApplicationFormBodyState extends State<ApplicationFormBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
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
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: kBlack,
                      child: Icon(
                        Icons.person_rounded,
                        color: kWhite,
                        size: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            "Muhammad Ikhmal Akif Bin Ilhtizam",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            softWrap: true,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 15,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "45m",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            "Discription",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              maxLines: 18,
              style: TextStyle(fontSize: 20.0),
              // maxLength: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                labelText: "Notes",
                labelStyle: TextStyle(fontSize: 20),
                hintText: 'This example student need money',
                hintStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
