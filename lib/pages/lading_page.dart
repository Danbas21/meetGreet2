import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/utils/animation_main.dart';
import 'package:flutter_app/utils/animation_text.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    double spaceElement = av == 1.0
        ? 8.2
        : av == .65
            ? 4.0
            : 4.3;

    double fontSize = av == 1.0
        ? 1.5
        : av == 0.65
            ? 1.85
            : 2.3;
    double variant = av == 1.0
        ? 8.5
        : av == .65
            ? 4.4
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
              height: height /
                  (av == 1.0
                      ? .6
                      : av == .65
                          ? 0.75
                          : 1),
              child: Stack(
                children: [
                  Positioned(
                    right: -width / 4,
                    top: -height / 3,
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
                    left: -width / 4,
                    bottom: height / 2,
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
                    bottom: height /
                        (av == .45
                            ? 12
                            : av == .65
                                ? 6
                                : 1.2),
                    left: width /
                        (av == .45
                            ? 1.8
                            : av == .65
                                ? 3.5
                                : 2.7),
                    child: Container(
                      width: width /
                          (av == .45
                              ? 2.5
                              : av == .65
                                  ? 4
                                  : 6),
                      height: av == .45 ? height / 1.5 : height / 1.4,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rectangle_1.png',
                          ),
                          fit: BoxFit.fill,
                          opacity: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: width /
                        (av == 1.0
                            ? 12
                            : av == .65
                                ? 20
                                : 7),
                    top: height /
                        (av == 1.0
                            ? 12
                            : av == .65
                                ? 10
                                : 16),
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
                    left: 0,
                    top: av == .45 ? 30 : 20,
                    child: SizedBox(
                      width: av == .45
                          ? 170
                          : av == .65
                              ? 280
                              : 500,
                      height: av == .45 ? 250 : 300,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: av == 1.0
                                  ? 250
                                  : av == .65
                                      ? 180
                                      : 80,
                              height: av == 1.0
                                  ? 180
                                  : av == .65
                                      ? 150
                                      : 80,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rectangle_16.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: av == 1.0
                                ? 170
                                : av == .65
                                    ? 45
                                    : 25,
                            top: av == 1.0
                                ? 60
                                : av == .65
                                    ? 60
                                    : 24,
                            child: Column(
                              children: [
                                Text(
                                  "MEET & GREET",
                                  style: TextStyle(
                                    fontSize: (24 / fontSize),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "EXPERIENCE 2024",
                                  style: TextStyle(
                                    fontSize: (22 / fontSize),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height /
                        (av == 1.0
                            ? 4
                            : av == .65
                                ? 6
                                : 8),
                    left: 10,
                    child: SizedBox(
                      width: av == 1.0 ? width / 1.3 : width,
                      height: height,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: height /
                                (av == 1.0
                                    ? 15
                                    : av == .65
                                        ? 15
                                        : 29),
                            left: 2,
                            child: SizedBox(
                              width: av == 1.0 ? width / 1.5 : width,
                              height: height,
                              child: AnimationMainText(
                                  img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                                  wiseAnimation: 4,
                                  fontSized: width / (av == 1.0 ? 50 : 40),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2 * av),
                            ),
                          ),
                          Positioned(
                            top: height /
                                (av == 1.0
                                    ? 15
                                    : av == .65
                                        ? 15
                                        : 29),
                            left: 0,
                            child: SizedBox(
                              width: av == 1.0 ? width / 1.3 : width,
                              height: height,
                              child: AnimationMainText(
                                  img: "MEET & GREET",
                                  wiseAnimation: 400,
                                  fontSized: width /
                                      (av == 1.0
                                          ? 15
                                          : av == .65
                                              ? 10
                                              : 8.5),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0),
                            ),
                          ),
                          Positioned(
                            top: height /
                                (av == 1.0
                                    ? 6
                                    : av == .65
                                        ? 6.5
                                        : 9),
                            left: 0,
                            child: SizedBox(
                              width: av == 1.0 ? width / 1.3 : width,
                              height: height,
                              child: AnimationMainText(
                                  img: "EXPERIENCE",
                                  wiseAnimation: -300,
                                  fontSized: width /
                                      (av == 1.0
                                          ? 15
                                          : av == .65
                                              ? 13
                                              : 8.5),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0),
                            ),
                          ),
                          Positioned(
                            top: height /
                                (av == 1.0
                                    ? 3.5
                                    : av == .65
                                        ? 5
                                        : 5.5),
                            left: 0,
                            child: Container(
                              alignment: Alignment.center,
                              width: av == 1.0 ? width / 2 : width,
                              height: height,
                              child: AnimationMainText(
                                  img: "2024",
                                  wiseAnimation: 400,
                                  fontSized: width /
                                      (av == 1.0
                                          ? 15
                                          : av == .65
                                              ? 10
                                              : 8.5),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height /
                        (av == 1.0
                            ? 110
                            : av == .65
                                ? 3.5
                                : 7),
                    right: av == 1.0
                        ? 25
                        : av == .65
                            ? 10
                            : null,
                    child: SizedBox(
                      width: av == 1.0 ? width / 2 : width,
                      height: height * 1.1,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: (width / variant),
                                height: height,
                                child: const AnimationMain(
                                  img: 'assets/images/rectangle_15.png',
                                  wiseAnimation: 600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: (width / spaceElement),
                              bottom: 0,
                              child: SizedBox(
                                width: (width / variant),
                                height: height,
                                child: const AnimationMain(
                                  img: 'assets/images/rectangle_7.png',
                                  wiseAnimation: -600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: (width / spaceElement) * 2,
                              top: 0,
                              child: SizedBox(
                                width: (width / variant),
                                height: height,
                                child: const AnimationMain(
                                  img: 'assets/images/rectangle_9.png',
                                  wiseAnimation: 600,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: SizedBox(
                                width: (width / variant),
                                height: height,
                                child: const AnimationMain(
                                  img: 'assets/images/rectangle_11.png',
                                  wiseAnimation: -600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width /
                        (av == 1.0
                            ? 12
                            : av == .65
                                ? 20
                                : 7),
                    bottom: height /
                        (av == 1.0
                            ? 2
                            : av == .65
                                ? 10
                                : 16),
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
                    right: 0 * av,
                    top: 0 * av,
                    child: SizedBox(
                      width: 850 * av,
                      height: 90 * av,
                      child: const BarNaviv(),
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
