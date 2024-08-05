import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/hover_animation.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class LadingPage3 extends StatelessWidget {
  const LadingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

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
                height: height * 1.3,
                child: Stack(
                  children: [
                    Positioned(
                      left: width / 10,
                      top: height /
                          (av == 1.0
                              ? 1.5
                              : av == .65
                                  ? 1.5
                                  : 1.5),
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
                      left: width / 4,
                      bottom: height /
                          (av == 1.0
                              ? 4
                              : av == .65
                                  ? 4
                                  : 5),
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
                      left: width /
                          (av == 1.0
                              ? 12
                              : av == .65
                                  ? 20
                                  : 15),
                      top: height /
                          (av == 1.0
                              ? 1.3
                              : av == .65
                                  ? 10
                                  : 4),
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
                      right: width /
                          (av == 1.0
                              ? 12
                              : av == .65
                                  ? 20
                                  : 5),
                      top: height /
                          (av == 1.0
                              ? 12
                              : av == .65
                                  ? 10
                                  : 8),
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
                      left: width /
                          (av == 1.0
                              ? 10
                              : av == .65
                                  ? 20
                                  : 20),
                      top: height /
                          (av == 1.0
                              ? 40
                              : av == .65
                                  ? 7
                                  : 16),
                      child: SizedBox(
                          width: width,
                          height: height * 1.4,
                          child: Stack(
                            children: [
                              Positioned(
                                top: height /
                                    (av == 1.0
                                        ? 4
                                        : av == .65
                                            ? 90
                                            : 6),
                                left: width /
                                    (av == 1.0
                                        ? 20
                                        : av == .65
                                            ? 2.5
                                            : 60),
                                child: SizedBox(
                                  width: width /
                                      (av == 1.0
                                          ? 3.5
                                          : av == .65
                                              ? 3
                                              : 1.4),
                                  height: height,
                                  child: HoverContainer(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/rectangle_6.png',
                                          fit: BoxFit.fill,
                                          width: width /
                                              (av == 1.0
                                                  ? 3.5
                                                  : av == .65
                                                      ? 3
                                                      : 1.15),
                                          height: height / 4,
                                        ),
                                        Text(
                                          'PRÓXIMOS EVENTOS',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width /
                                                (av == 1.0
                                                    ? 50
                                                    : av == .65
                                                        ? 40
                                                        : 25),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height /
                                    (av == 1.0
                                        ? 3
                                        : av == .65
                                            ? 3.2
                                            : 2),
                                left: width /
                                    (av == 1.0
                                        ? 2.5
                                        : av == .65
                                            ? -10
                                            : 6),
                                child: SizedBox(
                                  width: width / 2,
                                  height: height,
                                  child: HoverContainer(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/rectangle_20.jpeg',
                                          fit: BoxFit.fill,
                                          width: width /
                                              (av == 1.0
                                                  ? 4
                                                  : av == .65
                                                      ? 3
                                                      : 1.15),
                                          height: height / 4,
                                        ),
                                        Text(
                                          'MEET AND GREET',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width /
                                                (av == 1.0
                                                    ? 50
                                                    : av == .65
                                                        ? 35
                                                        : 25),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height /
                                    (av == 1.0
                                        ? 1.5
                                        : av == .65
                                            ? 2.7
                                            : 1.2),
                                right: -width /
                                    (av == 1.0
                                        ? 2.6
                                        : av == .65
                                            ? 1.5
                                            : 7),
                                child: SizedBox(
                                  width: width /
                                      (av == 1.0
                                          ? .9
                                          : av == .65
                                              ? .9
                                              : .9),
                                  height: height,
                                  child: HoverContainer(
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: av == 1.0
                                              ? 200
                                              : av == .65
                                                  ? 0
                                                  : 100,
                                          top: 0,
                                          child: SizedBox(
                                            width: width /
                                                (av == 1.0
                                                    ? 6
                                                    : av == .65
                                                        ? 5
                                                        : 2.5),
                                            height: height / 4,
                                            child: Image.asset(
                                              'assets/images/rectangle_3.png',
                                              fit: BoxFit.fill,
                                              width: width /
                                                  (av == 1.0
                                                      ? 3.5
                                                      : av == .65
                                                          ? 1.3
                                                          : 1.15),
                                              height: height / 3,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: width /
                                              (av == 1.0
                                                  ? 5
                                                  : av == .65
                                                      ? 10
                                                      : 10),
                                          top: height / 20,
                                          child: SizedBox(
                                            width: width /
                                                (av == 1.0
                                                    ? 10
                                                    : av == .65
                                                        ? 6
                                                        : 4),
                                            height: height / 4,
                                            child: Image.asset(
                                              'assets/images/rectangle_4.png',
                                              fit: BoxFit.fill,
                                              width: width /
                                                  (av == 1.0
                                                      ? 10
                                                      : av == .65
                                                          ? 1.3
                                                          : 1.15),
                                              height: height / 3,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: av == 1.0
                                              ? 120
                                              : av == .65
                                                  ? 50
                                                  : 50,
                                          top: 10,
                                          child: SizedBox(
                                            width: width /
                                                (av == 1.0
                                                    ? 5
                                                    : av == .65
                                                        ? 4
                                                        : 2),
                                            height: height / 4,
                                            child: Image.asset(
                                              'assets/images/e9b4486e5cb972cdb482690080dfcd70.png',
                                              fit: BoxFit.fill,
                                              width: width /
                                                  (av == 1.0 ? 5 : 1.15),
                                              height: height / 3,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: width /
                                              (av == 1.0
                                                  ? 40
                                                  : av == .65
                                                      ? 30
                                                      : 8),
                                          top: height /
                                              (av == 1.0
                                                  ? 3.8
                                                  : av == .65
                                                      ? 3.8
                                                      : 3.7),
                                          child: Text(
                                            'ARTÍCULOS COLECCIONABLES',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: width /
                                                  (av == 1.0
                                                      ? 50
                                                      : av == .65
                                                          ? 50
                                                          : 25),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

final List<String> listWidget = [
  'assets/images/rectangle_3.png',
  'assets/images/rectangle_20.jpeg',
  'assets/images/rectangle_6.png',
  'assets/images/rectangle_4.png',
  'assets/images/rectangle_3.png',
];
