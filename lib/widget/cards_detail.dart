import 'package:flutter/material.dart';
import 'package:wallet_apps/page/details_screen.dart';
import 'package:wallet_apps/theme.dart';

class CardsDetail extends StatelessWidget {
  final String saldo;
  final String bgUrl;
  final String nama;
  final String expired;
  final String ccNumber;

  CardsDetail({this.saldo, this.bgUrl, this.nama, this.expired, this.ccNumber});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Container(
        height: 197,
        width: 432,
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: AssetImage('$bgUrl'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '$saldo',
                    style: boltwhiteTextStyle.copyWith(fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$ccNumber',
                    style: boltwhiteTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '$nama',
                        style: whiteTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        '$expired',
                        style: whiteTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
