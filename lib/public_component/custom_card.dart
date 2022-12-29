import 'package:fkaa_donation/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard extends StatefulWidget {
  final String name;
  final String time;
  final String description;
  final IconData iconTime;
  final String? textLink;
  final Function? onPressDetail;
  final Function? onPressAccept;
  final Function? onPressDecline;
  const CustomCard({
    super.key,
    required this.name,
    required this.iconTime,
    required this.time,
    required this.description,
    required this.textLink,
    required this.onPressDetail,
    required this.onPressAccept,
    required this.onPressDecline,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kWhite,
          border: Border.all(
            width: 2,
            color: Colors.black12,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset.fromDirection(11, 3),
              color: Colors.black26,
              spreadRadius: 1.0,
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
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
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
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
                            widget.iconTime,
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            widget.time,
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
                          widget.description,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () => widget.onPressDetail,
                        child: Text(
                          widget.textLink!,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            color: textLink,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 50,
              left: 300,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => widget.onPressAccept,
                    child: Icon(Icons.subtitles),
                  ),
                  GestureDetector(
                    onTap: () => widget.onPressDecline,
                    child: Icon(Icons.subtitles_off_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
