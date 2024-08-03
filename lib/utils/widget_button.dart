import 'package:flutter/material.dart';
import 'package:flutter_app/pages/pasarela_pagos.dart';
import 'package:flutter_app/utils/screen_utils.dart';

class ButtonMain extends StatelessWidget {
  final double widthB;
  final double heightB;
  final String title;

  const ButtonMain({
    super.key,
    required this.widthB,
    required this.heightB,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double multiplier = ResponsiveUtil.getMultiplier(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: widthB,
      height: heightB,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentGatewayScreen()),
          );
        },
        icon: Icon(
          Icons.arrow_downward,
          color: Colors.white,
          size: width / 22,
        ),
        label: Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(
              horizontal: 14 * multiplier, vertical: 10 * multiplier),
          textStyle: TextStyle(
            fontSize: width / 23,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
