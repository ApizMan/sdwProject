import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/anonymous/components/donation_paymant/anonymous_letter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationPaymentBody extends StatefulWidget {
  const DonationPaymentBody({super.key});

  @override
  State<DonationPaymentBody> createState() => _DonationPaymentBodyState();
}

class _DonationPaymentBodyState extends State<DonationPaymentBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 250.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnonymousLetter(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 120.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kButton,
            ),
            child: Text(
              "Payment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
