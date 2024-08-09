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
    double av = ResponsiveUtil.getMultiplier(context);
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
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: width / (av == 1.0 ? 40 : 15),
        ),
        label: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 83, 158, 228),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          textStyle: TextStyle(
            fontSize: width / (av == 1.0 ? 40 : 15),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
