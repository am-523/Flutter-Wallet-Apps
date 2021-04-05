import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_apps/theme.dart';
import 'package:wallet_apps/widget/cards_detail.dart';
import 'package:wallet_apps/widget/history_item.dart';

import 'home_screen.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff74D8FE),
                Color(0xff139CFA),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/back.png',
                          width: 30,
                        ),
                      ),
                      Text(
                        'Card Details',
                        style: whiteTextStyle.copyWith(fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                                (route) => false);
                          });
                        },
                        child: Image.asset(
                          'assets/more.png',
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CardsDetail(
                  bgUrl: 'assets/cards1.png',
                  saldo: 'Rp. 781.900',
                  ccNumber: '**** **** **** 6751',
                  nama: 'Asril M',
                  expired: '11 / 26',
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    height: 65,
                    width: 432,
                    color: whiteColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 157,
                          height: 47,
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
                            onPressed: () {},
                            child: Text(
                              'This Week',
                              style: whiteTextStyle.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            ' This Month',
                            style:
                                softpurpleColorTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'History',
                        style: whiteTextStyle.copyWith(fontSize: 30),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'View all',
                        style: whiteTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(23),
                  child: Container(
                    height: 340,
                    width: 432,
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              HistoryItem(
                                icon: 'assets/p4.png',
                                title: 'Deposit',
                                subTitle: 'Add Money',
                                harga: 890,
                                waktu: '11:30 PM',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              HistoryItem(
                                icon: 'assets/p1.png',
                                title: 'Play Store',
                                subTitle: 'Top up  FF',
                                harga: 189,
                                waktu: '08:30 AM',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              HistoryItem(
                                icon: 'assets/p2.png',
                                title: 'Cashback',
                                subTitle: 'Tokopedia',
                                harga: 89,
                                waktu: '07:30 AM',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              HistoryItem(
                                icon: 'assets/p3.png',
                                title: 'Dewa Kipas',
                                subTitle: 'Send Money',
                                harga: 189,
                                waktu: '11:30 PM',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              HistoryItem(
                                icon: 'assets/p5.png',
                                title: 'Netflix',
                                subTitle: 'Billing Payment',
                                harga: 30,
                                waktu: '04:30 PM',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              HistoryItem(
                                icon: 'assets/p4.png',
                                title: 'Deposit',
                                subTitle: 'Add Money',
                                harga: 890,
                                waktu: '11:30 PM',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
