import 'package:flutter/material.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/screen_utils.dart';

import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    double multiplier = ResponsiveUtil.getMultiplier(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    double spaceElement = multiplier == 1.0 ? 1.8 : 1.4;

    void _showPopup(BuildContext context, String frontImage) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: InteractiveViewer(
              boundaryMargin: const EdgeInsets.all(100),
              minScale: 0.1,
              child: SizedBox(
                width: width,
                height: height / 2.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    frontImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: width,
        height: height * spaceElement,
        child: Stack(
          children: [
            Positioned(
              left: -200,
              bottom: 1000,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference(
                  opacity: 100,
                ),
              ),
            ),
            Positioned(
              right: 90,
              bottom: 1000,
              child: SizedBox(
                width: width /
                    (av == 1.0
                        ? 11
                        : av == .65
                            ? 6
                            : 4),
                height: height / 10,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              left: -200,
              bottom: 1100,
              child: SizedBox(
                width: 950 * multiplier,
                height: 950 * multiplier,
                child: Circumference3(
                  widthC: 900 * multiplier,
                  heightC: 900 * multiplier,
                  opacity: 225,
                ),
              ),
            ),
            Positioned(
              right: -250,
              top: 1000,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference(
                  opacity: 100,
                ),
              ),
            ),
            Positioned(
              right: -300,
              top: 1100,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference3(
                  widthC: 900,
                  heightC: 900,
                  opacity: 225,
                ),
              ),
            ),
            Positioned(
              left: -200,
              top: -250,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference(
                  opacity: 100,
                ),
              ),
            ),
            Positioned(
              left: -200,
              top: -270,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference3(
                  widthC: 900,
                  heightC: 900,
                  opacity: 225,
                ),
              ),
            ),
            Positioned(
              right: -200 * multiplier,
              bottom: -250 * multiplier,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference(
                  opacity: 100,
                ),
              ),
            ),
            Positioned(
              left: 90,
              bottom: 290,
              child: SizedBox(
                width: width /
                    (av == 1.0
                        ? 11
                        : av == .65
                            ? 6
                            : 4),
                height: height / 10,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              right: -200,
              bottom: -270,
              child: SizedBox(
                width: width / 1.7,
                height: height / 1.2,
                child: const Circumference3(
                  widthC: 900,
                  heightC: 900,
                  opacity: 225,
                ),
              ),
            ),
            Positioned(
              top: height / 8,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.only(right: 120.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: width /
                          (av == 1.0
                              ? 1.2
                              : av == .65
                                  ? 1.05
                                  : 1.05),
                      height: height /
                          (av == 1.0
                              ? 12
                              : av == .65
                                  ? 12
                                  : 12),
                      child: Text(
                        'Horario de Eventos',
                        style: TextStyle(
                          fontSize: width /
                              (av == 1.0
                                  ? 1.02
                                  : av == .65
                                      ? 1.02
                                      : 15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: width / 1.02,
                      height: height / (av == .45 ? 3 : 1.8),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: width / 1.02,
                              height: height /
                                  (av == 1.0
                                      ? 1.8
                                      : av == .65
                                          ? 1.8
                                          : 3),
                              child: Image.asset(
                                'assets/images/horarios1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.add_circle,
                                  color:
                                      const Color.fromARGB(255, 226, 172, 10),
                                  size: width / 20),
                              onPressed: () => _showPopup(
                                  context, 'assets/images/horarios1.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 1.02,
                      height: height /
                          (av == 1.0
                              ? 1.8
                              : av == .65
                                  ? 1.8
                                  : 3),
                      child: Stack(children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: width / 1.02,
                            height: height /
                                (av == 1.0
                                    ? 1.8
                                    : av == .65
                                        ? 1.8
                                        : 3),
                            child: Image.asset(
                              'assets/images/horarios2.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.add_circle,
                                color: const Color.fromARGB(255, 226, 172, 10),
                                size: width / 20),
                            onPressed: () => _showPopup(
                              context,
                              'assets/images/horarios2.jpg',
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: width /
                  (av == 1.0
                      ? 12
                      : av == .65
                          ? 20
                          : -10),
              top: 0,
              child: SizedBox(
                width: width /
                    (av == 1.0
                        ? 1.11
                        : av == .65
                            ? 1.11
                            : .9),
                height: 90 * av,
                child: BarNaviv(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
