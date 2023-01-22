import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/screen/anonymous/components/donation_paymant/anonymous_letter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay/pay.dart';

class DonationPaymentBody extends StatefulWidget {
  const DonationPaymentBody({super.key});

  @override
  State<DonationPaymentBody> createState() => _DonationPaymentBodyState();
}

class _DonationPaymentBodyState extends State<DonationPaymentBody> {
  final TextEditingController _amountController = TextEditingController();

  final _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: PaymentItemStatus.final_price,
    )
  ];

  void onGooglePayResult(paymentResult) {
    debugPrint(paymentResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 250.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  labelText: "Amount",
                  labelStyle: TextStyle(fontSize: 20),
                  hintText: 'min RM 20',
                  hintStyle: TextStyle(fontSize: 20),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GooglePayButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnonymousLetter(),
                  ),
                );
              },
              width: 300,
              paymentConfigurationAsset: 'json/gpay.json',
              paymentItems: _paymentItems,
              type: GooglePayButtonType.donate,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: onGooglePayResult,
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
