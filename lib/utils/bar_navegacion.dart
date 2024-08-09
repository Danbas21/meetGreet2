import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/invite_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/pages/schedule_page.dart';
import 'package:flutter_app/pages/whatis_page.dart';

class BarNaviv extends StatefulWidget {
  @override
  BarNavivState createState() => BarNavivState();
}

class BarNavivState extends State<BarNaviv> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double av =
        MediaQuery.of(context).devicePixelRatio; // Ajuste de escala de pantalla

    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.antiAlias,
        backgroundColor: Color.fromARGB(100, 83, 158, 228),
        elevation: 1,
        scrolledUnderElevation: 2,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        surfaceTintColor: Colors.white,
        leading: width < 1024
            ? Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              )
            : null,
        actions: width >= 1024
            ? <Widget>[
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
                                      child: HomePage(),
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
                                      child: LandingPage2(),
                                    ),
                                  ),
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
                                      child: LadingPage3(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'HOME',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: width /
                          (av == 1.0
                              ? 90
                              : av == .65
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
                        builder: (context) => WhatIsPage(),
                      ),
                    );
                  },
                  child: Text(
                    '¿QUÉ ES?',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: width /
                          (av == 1.0
                              ? 90
                              : av == .65
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
                        builder: (context) => ListInvites(),
                      ),
                    );
                  },
                  child: Text(
                    'INVITADOS',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: width /
                          (av == 1.0
                              ? 90
                              : av == .65
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
                        builder: (context) => SchedulePage(),
                      ),
                    );
                  },
                  child: Text(
                    'HORARIOS',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: width /
                          (av == 1.0
                              ? 90
                              : av == .65
                                  ? 40
                                  : 35),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ]
            : null,
      ),
      drawer: width < 1024
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('Menú'),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('HOME'),
                    onTap: () {
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
                                        child: HomePage(),
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
                                        child: LandingPage2(),
                                      ),
                                    ),
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
                                        child: LadingPage3(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('¿QUÉ ES?'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WhatIsPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('INVITADOS'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListInvites(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('HORARIOS'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SchedulePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
