import 'package:flutter/material.dart';

import 'package:wallet_apps/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final String name;

  BottomNavbarItem({this.imageUrl, this.name, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageUrl,
          width: 26,
        ),
        Spacer(),
        Text(
          this.name,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: softblueColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(900))),
              )
            : Container(),
      ],
    );
  }
}
