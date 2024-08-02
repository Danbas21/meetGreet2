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
                height: height /
                    (av == 1.0
                        ? .5
                        : av == .65
                            ? 0.75
                            : 1),
                child: Stack(
                  children: [
                    Positioned(
                      left: -width / 4,
                      bottom: -height / 3,
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
                      top: 200,
                      child: SizedBox(
                          width: width,
                          height: height,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 0,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: width / 2.5,
                                      height: height,
                                      child: HoverContainer(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/rectangle_6.png',
                                              fit: BoxFit.fill,
                                            ),
                                            Text(
                                              'PRÓXIMOS EVENTOS',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: width / 60,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: width / 2,
                                child: SizedBox(
                                  width: width / 2.5,
                                  height: height,
                                  child: HoverContainer(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/rectangle_20.jpeg',
                                          fit: BoxFit.fill,
                                        ),
                                        Text(
                                          'MEET AND GREET',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width / 50,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   top: 0,
                              //   left: 0,
                              //   child: SizedBox(
                              //     width: width / 50,
                              //     height: height / 2,
                              //     child: HoverContainer(
                              //       child: Column(
                              //         children: [
                              //           Image.asset(
                              //             'assets/images/rectangle_6.png',
                              //             fit: BoxFit.fill,
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
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

class Photos4 extends StatelessWidget {
  const Photos4({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    double fontSize = av == 1.0
        ? 1
        : av == 0.7
            ? 1.8
            : 3;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Positioned(
            left: av == 1.0
                ? 40
                : av == 0.65
                    ? 200
                    : 0,
            bottom: 0,
            child: SizedBox(
              width: width,
              height: height / 8,
              child: Text(
                'MEET AND GREET',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (50 / fontSize),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: width,
              height: height / 3.8,
              child: Image.asset('assets/images/rectangle_20.jpeg',
                  fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}

class Photos1 extends StatelessWidget {
  const Photos1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double av = ResponsiveUtil.getMultiplier(context);
    double widthContainer = av == 1.0
        ? 1900
        : av == .70
            ? 970
            : width;
    double heightContainer = av == 1.0
        ? 700
        : av == .70
            ? 350
            : 200;

    double heightMultiplier = av == 1.0 ? 1.3 : 2;
    double divisor = av == 1.0 ? 3.5 : 1.4;
    double fontSize = av == 1.0
        ? 1
        : av == 0.7
            ? 1.8
            : 3;

    return SizedBox(
      width: widthContainer / divisor,
      height: heightContainer * heightMultiplier,
      child: Stack(children: [
        Positioned(
          left: av == 1.0
              ? 40
              : av == 0.7
                  ? 200
                  : 70,
          bottom: 0,
          child: SizedBox(
            width: widthContainer,
            height: 100,
            child: Text(
              'PRÓXIMOS EVENTOS',
              style: TextStyle(
                color: Colors.black,
                fontSize: (50 / fontSize),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
            left: 0 * av,
            top: 0 * av,
            child: SizedBox(
              width: widthContainer / divisor,
              height: heightContainer,
              child: Image.asset('assets/images/rectangle_6.png'),
            ))
      ]),
    );
  }
}

class Photos2 extends StatelessWidget {
  const Photos2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double av = ResponsiveUtil.getMultiplier(context);
    double widthContainer = av == 1.0
        ? 1900
        : av == .70
            ? 970
            : width;
    double heightContainer = av == 1.0
        ? 700
        : av == .70
            ? 350
            : 200;

    double heightMultiplier = av == 1.0 ? 1.3 : 1.9;
    double divisor = av == 1.0 ? 2 : 1.3;
    double fontSize = av == 1.0
        ? 1
        : av == 0.7
            ? 1.8
            : 3;

    return SizedBox(
      width: widthContainer / divisor,
      height: heightContainer * heightMultiplier,
      child: Stack(
        children: [
          Positioned(
            left: 60,
            top: -10,
            child: SizedBox(
              width: widthContainer / divisor,
              height: heightContainer,
              child: Image.asset('assets/images/rectangle_3.png'),
            ),
          ),
          Positioned(
            right: 40,
            top: 15,
            child: SizedBox(
              width: widthContainer / divisor,
              height: heightContainer,
              child: Image.asset('assets/images/rectangle_4.png'),
            ),
          ),
          Positioned(
            left: 80,
            top: av == .45 ? -19 : 10,
            child: SizedBox(
              width: widthContainer / divisor,
              height: heightContainer * 1.3,
              child: Image.asset(
                'assets/images/e9b4486e5cb972cdb482690080dfcd70.png',
              ),
            ),
          ),
          Positioned(
            left: av == 1.0
                ? 40
                : av == 0.7
                    ? 200
                    : 50,
            bottom: 5,
            child: SizedBox(
              width: widthContainer,
              height: 100,
              child: Text(
                'ARTÍCULOS COLECCIONABLES',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  background: Paint()
                    ..color = const Color.fromARGB(99, 234, 241, 242),
                  color: Colors.black,
                  fontSize: (50 / fontSize),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
