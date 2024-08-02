import 'package:flutter/material.dart';
import 'package:flutter_app/utils/screen_utils.dart';

import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class LandingPage2 extends StatelessWidget {
  const LandingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    double spaceElement = av == 1.0
        ? 8.2
        : av == .65
            ? 5.6
            : 4.1;

    double variant = av == 1.0
        ? 8.5
        : av == .65
            ? 6
            : 4.5;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: width,
              height: height,
              child: Stack(
                children: [
                  Positioned(
                    left: width / 2,
                    bottom: height /
                        (av == 1.0
                            ? -5
                            : av == .65
                                ? 25
                                : 20),
                    child: SizedBox(
                      width: width / 1.7,
                      height: height / 1.2,
                      child: const Circumference(
                        widthC: 900,
                        heightC: 900,
                        opacity: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    right: width /
                        (av == 1.0
                            ? 7
                            : av == .65
                                ? 40
                                : 20),
                    top: height /
                        (av == 1.0
                            ? 5
                            : av == .65
                                ? 10
                                : 15),
                    child: SizedBox(
                      width: width /
                          (av == 1.0
                              ? 11
                              : av == .65
                                  ? 6
                                  : 3.2),
                      height: height / 10,
                      child: const CirculosEnGrid(),
                    ),
                  ),
                  Positioned(
                    top: height /
                        (av == 1.0
                            ? 110
                            : av == .65
                                ? 90
                                : -20),
                    left: av == 1.0
                        ? 25
                        : av == .65
                            ? 10
                            : null,
                    child: SizedBox(
                      width: av == .45
                          ? width
                          : av == .65
                              ? width / 1.43
                              : width / 2,
                      height: height * 1.1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: (width / variant),
                              height: height,
                              child: Image.asset(
                                'assets/images/rectangle.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: (width / spaceElement),
                            bottom: 0,
                            child: SizedBox(
                              width: (width / variant),
                              height: height,
                              child: Image.asset(
                                'assets/images/rectangle_13.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: (width / spaceElement) * 2,
                            top: 0,
                            child: SizedBox(
                              width: (width / variant),
                              height: height,
                              child: Image.asset(
                                'assets/images/rectangle_10.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                              width: (width / variant),
                              height: height,
                              child: Image.asset(
                                'assets/images/rectangl.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: height /
                        (av == 1.0
                            ? -4
                            : av == .65
                                ? -30
                                : 8),
                    left: width /
                        (av == 1.0
                            ? 2
                            : av == .65
                                ? 2.3
                                : 10),
                    child: SizedBox(
                      width: width,
                      height: height / 1.2,
                      child: Stack(
                        children: [
                          Positioned(
                            left: width /
                                (av == 1.0
                                    ? 6
                                    : av == .65
                                        ? 6
                                        : 5),
                            top: height /
                                (av == 1.0
                                    ? 18
                                    : av == .65
                                        ? 20
                                        : 10),
                            child: SizedBox(
                              width: width,
                              height: height / 1.2,
                              child: Text(
                                'Expo Reforma\nAv. Morelos 67, Juárez, Cuauhtémoc,\nC.P.06600 Ciudad de México, CDMX',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width /
                                      (av == 1.0
                                          ? 50
                                          : av == .65
                                              ? 45
                                              : 35),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: width / 1.23,
                            top: height /
                                (av == 1.0
                                    ? 19
                                    : av == .65
                                        ? 20
                                        : 12),
                            child: SizedBox(
                              width: width / 9,
                              height: height / 9,
                              child: Image.asset(
                                'assets/images/maps.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
