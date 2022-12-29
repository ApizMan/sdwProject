import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationAlumni extends StatefulWidget {
  const DonationAlumni({super.key});

  @override
  State<DonationAlumni> createState() => _DonationAlumniState();
}

class _DonationAlumniState extends State<DonationAlumni> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Donation"),
    );
  }
}
