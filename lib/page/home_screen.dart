import 'package:flutter/material.dart';
import 'package:wallet_apps/theme.dart';
import 'package:wallet_apps/widget/card_item.dart';
import 'package:wallet_apps/widget/history_item.dart';
import 'package:wallet_apps/widget/navbar_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 95,
                      ),
                      Text(
                        'My Card',
                        style: blackTextStyle.copyWith(fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 185,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CardItem(
                                  bgUrl: 'assets/card.png',
                                  saldo: 'Rp. 781.900',
                                  ccNumber: '**** **** **** 6751',
                                  nama: 'Asril M',
                                  expired: '11 / 26',
                                ),
                                CardItem(
                                  bgUrl: 'assets/visa.png',
                                  saldo: 'Rp. 981.900',
                                  ccNumber: '**** **** **** 4751',
                                  nama: 'Asril M',
                                  expired: '10 / 26',
                                ),
                              ],
                            )
                          ],
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
                              style: blackTextStyle.copyWith(fontSize: 30),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'View all',
                              style: softpurpleColorTextStyle.copyWith(
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: whiteColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/menu.png',
                        width: 40,
                      ),
                    ),
                    Text(
                      'Pitih Wallet',
                      style: regularTextStyle.copyWith(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isClicked = !isClicked;
                        });
                      },
                      child: Image.asset(
                        'assets/profile.png',
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/Home.png',
              name: 'Home',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Wallet.png',
              name: 'Wallet',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Activity.png',
              name: 'Statistics',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Setting.png',
              name: 'Setting',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
