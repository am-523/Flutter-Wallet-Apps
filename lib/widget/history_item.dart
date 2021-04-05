import 'package:flutter/material.dart';
import 'package:wallet_apps/theme.dart';

class HistoryItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final int harga;
  final String waktu;

  HistoryItem({this.icon, this.title, this.subTitle, this.harga, this.waktu});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 83,
        width: 365,
        color: whiteColor,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(
              '$icon',
              width: 62,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: mediaumTextStyle.copyWith(fontSize: 18),
                  ),
                  Text(
                    '$subTitle',
                    style: softpurpleColorTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 10),
              child: Column(
                children: [
                  Text(
                    '\$$harga',
                    style: redmediaumTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    '$waktu',
                    style: softpurpleColorTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
