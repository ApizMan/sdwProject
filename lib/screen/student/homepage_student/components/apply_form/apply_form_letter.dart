import 'package:fkaa_donation/screen/anonymous/anonymous.dart';
import 'package:fkaa_donation/screen/navigation/student/navigation_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ApplyFormLetter extends StatefulWidget {
  const ApplyFormLetter({super.key});

  @override
  State<ApplyFormLetter> createState() => _ApplyFormLetterState();
}

class _ApplyFormLetterState extends State<ApplyFormLetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavigationStudent(selectNavDefault: 0),
                      ),
                    );
                  },
                  icon: Icon(Icons.close),
                ),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(children: [
                Container(
                  height: 400,
                  width: 400,
                  child: Image(
                    image: AssetImage('assets/images/imgReceipt.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: 250,
                  child: Text(
                      'Thank you for your donation. May your deeds be accepted as good deed’s and meaningful to others',
                      style: TextStyle(fontSize: 22)),
                )
              ]),
            ),
          ],
        ),
      ),
    );
    String textToShow = 'Thank you for your donation.';
  }
}
