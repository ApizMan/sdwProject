import 'package:fkaa_donation/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemBody extends StatefulWidget {
  const ItemBody({super.key});

  @override
  State<ItemBody> createState() => _ItemBodyState();
}

class _ItemBodyState extends State<ItemBody> {
  List<String> imageCard = [
    'assets/images/imgCard.png',
    'assets/images/imgCard.png',
    'assets/images/imgCard.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: imageCard.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 50.0),
                                  child: Image(
                                    image: AssetImage(
                                      imageCard[index],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kWhite,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset.fromDirection(10, 2.0),
                                        color: Colors.black26,
                                        spreadRadius: 5.0,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                          top: 150,
                          left: 45,
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Join for donation!'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Donate Now'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    GestureDetector(
                                        onTap: () {},
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.arrow_circle_right_outlined,
                                          ),
                                          onPressed: () {},
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: boxHomepage,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset.fromDirection(10, 2.0),
                                  color: Colors.black26,
                                  spreadRadius: 5.0,
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
