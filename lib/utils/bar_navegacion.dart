import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/baner_principal.dart';
import 'package:flutter_app/pages/footer_page.dart';
import 'package:flutter_app/pages/invite_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/pages/schedule_page.dart';
import 'package:flutter_app/pages/whatis_page.dart';
import 'package:flutter_app/utils/screen_utils.dart';

class BarNavi extends StatelessWidget implements PreferredSizeWidget {
  const BarNavi({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    return AppBar(
      backgroundColor: const Color.fromARGB(100, 83, 158, 228),
      elevation: 1,
      title: Text('$width'),
      scrolledUnderElevation: 2,
      surfaceTintColor: Colors.white,
      leading: width > 1200
          ? null
          : Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOutBack,
                    child: IconButton(
                      icon: const Icon(Icons.menu_sharp),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                );
              },
            ),
      actions: width > 1200
          ? <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: const BarNavi(),
                        body: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height,
                                width: width,
                                child: const BannerApp(),
                              ),
                              SizedBox(
                                width: width,
                                height: height /
                                    (av == 1.0
                                        ? 1.5
                                        : av == .65
                                            ? 1.65
                                            : 2.63),
                                child: const HomePage(),
                              ),
                              SizedBox(
                                width: width,
                                height: height /
                                    (av == 1.0
                                        ? 1.5
                                        : av == .65
                                            ? 1.3
                                            : 2.63),
                                child: const LandingPage2(),
                              ),
                              SizedBox(
                                width: width,
                                height: height /
                                    (av == 1.0
                                        ? 1.3
                                        : av == .65
                                            ? 1.7
                                            : 2.63),
                                child: const LadingPage3(),
                              ),
                              SizedBox(
                                width: width,
                                height: height / 6.5,
                                child: Footer(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: width /
                        (av == 1.0
                            ? 90
                            : av == .65
                                ? 40
                                : 35),
                    fontWeight: FontWeight.bold,
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
                    color: Colors.blueAccent,
                    fontSize: width /
                        (av == 1.0
                            ? 90
                            : av == .65
                                ? 40
                                : 35),
                    fontWeight: FontWeight.bold,
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
                    color: Colors.blueAccent,
                    fontSize: width /
                        (av == 1.0
                            ? 90
                            : av == .65
                                ? 40
                                : 35),
                    fontWeight: FontWeight.bold,
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
                    color: Colors.blueAccent,
                    fontSize: width /
                        (av == 1.0
                            ? 90
                            : av == .65
                                ? 40
                                : 35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]
          : null,
    );
  }
}
