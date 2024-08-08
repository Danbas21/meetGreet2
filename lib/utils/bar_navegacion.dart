import 'package:flutter/material.dart';
import 'package:flutter_app/pages/sell_page.dart';
import 'package:flutter_app/pages/invite_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/pages/schedule_page.dart';
import 'package:flutter_app/pages/whatis_page.dart';
import 'package:flutter_app/utils/screen_utils.dart';

class BarNaviv extends StatelessWidget implements PreferredSizeWidget {
  const BarNaviv({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double multiplier = ResponsiveUtil.getMultiplier(context);
    double av = ResponsiveUtil.getMultiplier(context);

    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: WidgetStateColor.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(20) * multiplier,
          bottomRight: const Radius.circular(20) * multiplier,
        ),
      ),
      elevation: 0.2,
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SellTicket(),
              ),
            );
          },
          child: Container(
            width: width /
                (multiplier == 1.0
                    ? 15
                    : multiplier == .65
                        ? 7.5
                        : 6),
            height: height / 28,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: multiplier == .65
                      ? 3
                      : multiplier == 1.0
                          ? 4.5
                          : 8),
              child: Text(
                'BOLETOS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width /
                      (multiplier == 1.0
                          ? 90
                          : multiplier == .65
                              ? 40
                              : 50),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    body: SingleChildScrollView(
                  child: SizedBox(
                    width: width,
                    height: height *
                        (av == 1.0
                            ? 3
                            : av == .65
                                ? 3
                                : 2.7),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            width: width,
                            height: height /
                                (av == 1.0
                                    ? 2.4
                                    : av == .65
                                        ? 3
                                        : 2.63),
                            child: const HomePage(),
                          ),
                        ),
                        Positioned(
                            top: height /
                                (av == 1.0
                                    ? 1.02
                                    : av == .65
                                        ? .80
                                        : 1.195),
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                                width: width,
                                height: height / 1.5,
                                child: const LandingPage2())),
                        Positioned(
                          top: height /
                              (av == 1.0
                                  ? .55
                                  : av == .65
                                      ? .5
                                      : .7),
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            width: width,
                            height: height / .5,
                            child: const LadingPage3(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            );
          },
          child: Text(
            'HOME',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: width /
                  (multiplier == 1.0
                      ? 90
                      : multiplier == .65
                          ? 40
                          : 35),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WhatIsPage(),
              ),
            );
          },
          child: Text(
            '¿QUÉ ES?',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: width /
                  (multiplier == 1.0
                      ? 90
                      : multiplier == .65
                          ? 40
                          : 35),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListInvites(),
              ),
            );
          },
          child: Text(
            'INVITADOS',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: width /
                  (multiplier == 1.0
                      ? 90
                      : multiplier == .65
                          ? 40
                          : 35),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SchedulePage(),
              ),
            );
          },
          child: Text(
            'HORARIOS',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: width /
                  (multiplier == 1.0
                      ? 90
                      : multiplier == .65
                          ? 40
                          : 35),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    );
  }
}
