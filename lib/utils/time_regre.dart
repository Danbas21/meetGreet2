import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/screen_utils.dart';

class CountdownPage extends StatefulWidget {
  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  final targetDate = DateTime(2024, 10, 26);

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double av = ResponsiveUtil.getMultiplier(context);

    final now = DateTime.now();
    final difference = targetDate.difference(now);

    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;
    final seconds = difference.inSeconds % 60;

    return Text(
      'Faltan: $days días, $hours horas, $minutes minutos, $seconds segundos',
      style: TextStyle(
          fontSize: width / (av == 1.0 ? 30 : 25),
          color: const Color.fromARGB(
            255,
            0,
            0,
            0,
          ),
          fontFamily: 'Roboto',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900),
    );
  }
}
