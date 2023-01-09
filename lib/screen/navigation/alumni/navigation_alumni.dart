import 'package:fkaa_donation/screen/alumni/application_alumni/application_alumni.dart';
import 'package:fkaa_donation/screen/alumni/donation_alumni/donation_alumni.dart';
import 'package:fkaa_donation/screen/alumni/homepage_alumni/homepage_alumni.dart';
import 'package:fkaa_donation/screen/alumni/profile_alumni/alumni_profile.dart';
import 'package:fkaa_donation/public_component/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationAlumni extends StatefulWidget {
  @override
  _NavigationAlumniState createState() => _NavigationAlumniState();
}

class _NavigationAlumniState extends State<NavigationAlumni> {
  int _selectedItem = 0;
  //Options or page show in body when selected
  static List<Widget> _widgetOptions = <Widget>[
    HomePageAlumni(),
    AlumniProfile(),
    DonationAlumni(),
    ApplicationAlumni(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.home_outlined,
            Icons.person_outline_outlined,
            Icons.money,
            Icons.folder,
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
          defaultSelectedIndex: 0,
        ),
        //Body content of selected option from navigation bar
        body: _widgetOptions.elementAt(_selectedItem),
      ),
    );
  }
}
