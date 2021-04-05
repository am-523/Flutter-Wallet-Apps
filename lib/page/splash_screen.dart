import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_apps/theme.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/bg.png',
                width: MediaQuery.of(context).size.width,
                height: 590,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 470,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Make your money\nmove with you',
                                  style: blackTextStyle.copyWith(fontSize: 35),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Most of the things in our app are\nmanaged with gestures",
                                  style:
                                      softblueTextStyle.copyWith(fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  width: 297,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff7F9BFA),
                                        Color(0xff4665D1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      30.0,
                                    ),
                                  ),
                                  child: FlatButton(
                                    onPressed: () {
                                      Get.off(HomeScreen());
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: Text(
                                      'Get Started',
                                      style:
                                          whiteTextStyle.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
