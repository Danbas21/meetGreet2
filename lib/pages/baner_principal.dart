import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/utils/animation_text.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_button.dart';
import 'package:flutter_app/utils/widget_circulo.dart';

import '../utils/utils_list.dart';

class BannerApp extends StatelessWidget {
  const BannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      ImagesCarge.ban1,
      ImagesCarge.ban2,
      ImagesCarge.ban3,
      ImagesCarge.ban4,
      ImagesCarge.ban5,
    ];
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      final double av = ResponsiveUtil.getMultiplier(context);

      return width >= 1100
          ? Row(
              children: [
                Expanded(
                  child: Container(
                    width: width / 2,
                    height: height,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(26, 163, 224, 217),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: width / -4,
                          top: height / -3,
                          child: SizedBox(
                            width: width / 2,
                            height: height,
                            child: const Circumference(
                              opacity: 100,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: av == .45 ? 50 : 20,
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
                                  child: SizedBox(
                                    width: width,
                                    height: height / 4.5,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/rectangle_16.png',
                                          fit: BoxFit.contain,
                                          width: width / 15,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "MEET & GREET",
                                              style: TextStyle(
                                                fontSize: width /
                                                    (av == 1.0
                                                        ? 90
                                                        : av == .65
                                                            ? 80
                                                            : 50),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "EXPERIENCE 2024",
                                              style: TextStyle(
                                                fontSize: width /
                                                    (av == 1.0
                                                        ? 90
                                                        : av == .65
                                                            ? 80
                                                            : 50),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height / 3.7,
                          left: 2,
                          child: SizedBox(
                            width: width,
                            height: height,
                            child: AnimationMainText(
                                img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                                wiseAnimation: 4,
                                fontSized: width / 50,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1),
                          ),
                        ),
                        Positioned(
                          top: height / 3,
                          left: 0,
                          child: Column(
                            children: [
                              SizedBox(
                                width: width,
                                height: height / 5,
                                child: AnimationMainText(
                                    img: "MEET & GREET",
                                    wiseAnimation: 400,
                                    fontSized: width / 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                width: width,
                                height: height / 5,
                                child: AnimationMainText(
                                    img: "EXPERIENCE",
                                    wiseAnimation: -300,
                                    fontSized: width / 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                              SizedBox(
                                width: width,
                                height: height / 5,
                                child: AnimationMainText(
                                    img: "2024",
                                    wiseAnimation: 400,
                                    fontSized: width / 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height /
                              (av == 1.0
                                  ? 1.19
                                  : av == .65
                                      ? 1.5
                                      : 1.5),
                          right: 10,
                          child: ButtonMain(
                            heightB: height / 8,
                            widthB: width / 6,
                            title: "Boletos",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      clipBehavior: Clip.antiAlias,
                      height: height,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 3000),
                      viewportFraction: 1.0,
                    ),
                    items: imgList
                        .map((item) => Image.asset(
                              item,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ))
                        .toList(),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    clipBehavior: Clip.antiAlias,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 3000),
                    viewportFraction: 1.0,
                  ),
                  items: imgList
                      .map((item) => Image.asset(
                            item,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                          ))
                      .toList(),
                ),
                Container(
                  width: width,
                  height: height / (av == .65 ? 1.6 : 1.6),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(26, 163, 224, 217),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: width / 2,
                          height: height / 2,
                          child: const Circumference(
                            opacity: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: width,
                          height: height,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/rectangle_16.png',
                                      fit: BoxFit.contain,
                                      width: width / 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "MEET & GREET",
                                          style: TextStyle(
                                            fontSize:
                                                width / (av == .65 ? 60 : 50),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "EXPERIENCE 2024",
                                          style: TextStyle(
                                            fontSize:
                                                width / (av == .65 ? 60 : 50),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: height / 10,
                        left: 20,
                        child: SizedBox(
                          width: width,
                          height: height,
                          child: AnimationMainText(
                              img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                              wiseAnimation: 4,
                              fontSized: width / 50,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 20,
                        child: SizedBox(
                          width: width,
                          height: height / (av == .65 ? 3.5 : 3),
                          child: Column(
                            children: [
                              Expanded(
                                child: AnimationMainText(
                                    img: "MEET & GREET",
                                    wiseAnimation: 400,
                                    fontSized: width / 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                              Expanded(
                                child: AnimationMainText(
                                    img: "EXPERIENCE",
                                    wiseAnimation: -300,
                                    fontSized: width / 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                              Expanded(
                                child: AnimationMainText(
                                    img: "2024",
                                    wiseAnimation: 400,
                                    fontSized: width / 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 10,
                        child: ButtonMain(
                          heightB: height / 25,
                          widthB: width / 3,
                          title: "Boletos",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
    });
  }
}
