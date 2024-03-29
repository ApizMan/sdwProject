import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/student/profile/edit_profile/components/change_password/edit_student_profile_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStudentProfileItem extends StatefulWidget {
  const EditStudentProfileItem({super.key});

  @override
  State<EditStudentProfileItem> createState() => _EditStudentProfileItemState();
}

class _EditStudentProfileItemState extends State<EditStudentProfileItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 20),
              hintText: 'example bin example',
              hintStyle: TextStyle(fontSize: 20),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              labelText: "Username",
              labelStyle: TextStyle(fontSize: 20),
              hintText: 'exampleBinExample',
              hintStyle: TextStyle(fontSize: 20),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
          SizedBox(
            height: 20,
          ),
          TextFormField(
            readOnly: true,
            enableSuggestions: false,
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 20),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 270, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditStudentProfilePassword(),
                  ),
                );
              },
              child: Text(
                "Change Password?",
                style: TextStyle(
                  fontSize: 13.5,
                  color: textLink,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 150.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kButton,
              ),
              child: Text(
                "Save",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
