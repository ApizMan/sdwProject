import 'package:fkaa_donation/public_component/custom_bottom_navigation_bar.dart';
import 'package:fkaa_donation/screen/student/homepage_student/homepage_student.dart';
import 'package:fkaa_donation/screen/student/profile/student_profile.dart';
import 'package:flutter/material.dart';

class NavigationAlumni extends StatefulWidget {
  int selectNavDefault;

  NavigationAlumni({required this.selectNavDefault});
  @override
  _NavigationAlumniState createState() => _NavigationAlumniState();
}

class _NavigationAlumniState extends State<NavigationAlumni> {
  late int _selectedItem = widget.selectNavDefault;
  //Options or page show in body when selected
  static List<Widget> _widgetOptions = <Widget>[
    HomePageStudent(),
    StudentProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.home_outlined,
            Icons.person_outline_outlined,
          ],
          onChange: (val) {
            setState(
              () {
                _selectedItem = val;
                // _selectedItem == 1
                //     ? Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => AlumniProfile(),
                //         ))
                //     : null;
              },
            );
          },
          defaultSelectedIndex: widget.selectNavDefault,
        ),
        //Body content of selected option from navigation bar
        body: _widgetOptions.elementAt(_selectedItem),
      ),
    );
  }
}
