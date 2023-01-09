import 'package:firebase_auth/firebase_auth.dart';
import 'package:fkaa_donation/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButtonNavigator extends StatefulWidget {
  final IconData icon_prefix;
  final IconData icon_navigate;
  final String text;
  final bool navigation;
  final String? text_elevateButton;
  const CustomButtonNavigator({
    super.key,
    required this.icon_prefix,
    required this.icon_navigate,
    required this.text,
    required this.navigation,
    this.text_elevateButton,
  });

  @override
  State<CustomButtonNavigator> createState() => _CustomButtonNavigatorState();
}

class _CustomButtonNavigatorState extends State<CustomButtonNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: widget.navigation == true
          ? BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset.fromDirection(11),
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 10.0,
                ),
              ],
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(widget.icon_prefix),
              SizedBox(
                width: 10,
              ),
              Text(widget.text),
              widget.navigation == true
                  ? SizedBox()
                  : SizedBox(
                      width: 30,
                    ),
            ],
          ),
          widget.navigation == true
              ? Icon(widget.icon_navigate)
              : Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(widget.text_elevateButton!),
                    ),
                  ],
                ),
        ],
      ),
    );
    ;
  }
}
