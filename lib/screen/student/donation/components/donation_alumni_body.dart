import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/public_component/custom_button_navigator.dart';
import 'package:fkaa_donation/screen/student/donation/components/donation_paymant/donation_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationAlumniBody extends StatefulWidget {
  const DonationAlumniBody({super.key});

  @override
  State<DonationAlumniBody> createState() => _DonationAlumniBodyState();
}

class _DonationAlumniBodyState extends State<DonationAlumniBody> {
  List<String> img_donation = [
    "assets/images/img-donation1.png",
    "assets/images/img-donation2.png",
  ];

  List<String> text_donation = [
    "Mangsa Banjir Pelajar UMP",
    "Pelajar Asnaf dan Keluarga B40",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        AspectRatio(
          aspectRatio: 9 / 16,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: img_donation.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
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
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image(
                                image: AssetImage(img_donation[index]),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              text_donation[index],
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 195,
                        right: -30,
                        child: CustomButtonNavigator(
                          text_elevateButton: "Donate",
                          navigation: false,
                          icon_prefix: Icons.track_changes_rounded,
                          icon_navigate: Icons.arrow_back,
                          text: "Yayasan UMP",
                          onPress: DonationPayment(),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
