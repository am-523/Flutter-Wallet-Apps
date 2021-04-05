import 'package:flutter/material.dart';
import 'package:wallet_apps/page/details_screen.dart';
import 'package:wallet_apps/theme.dart';

class CardItem extends StatelessWidget {
  final String saldo;
  final String bgUrl;
  final String nama;
  final String expired;
  final String ccNumber;

  CardItem({this.saldo, this.bgUrl, this.nama, this.expired, this.ccNumber});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Container(
          height: 174,
          width: 268,
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
                    Text(
                      '$ccNumber',
                      style: boltwhiteTextStyle.copyWith(fontSize: 24),
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
      ),
    );
  }
}
