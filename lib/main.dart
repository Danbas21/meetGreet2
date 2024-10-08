import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/pages/drawer_page.dart';
import 'package:flutter_app/pages/footer_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/utils/animation_main.dart';
import 'package:flutter_app/utils/animation_text.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/hover_animation.dart';

import 'package:flutter_app/utils/time_regre.dart';
import 'package:flutter_app/utils/utils_list.dart';
import 'package:flutter_app/utils/widget_button.dart';
import 'package:flutter_app/utils/widget_circulo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meet & Greet Experience',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ResponsiveZoomableWebPage(),
    );
  }
}

enum Section { one, two, three }

class ResponsiveZoomableWebPage extends StatelessWidget {
  static const double wideBreakpoint = 1200;
  static const double mediumBreakpoint = 600;

  final int numberOfSections;

  const ResponsiveZoomableWebPage({super.key, this.numberOfSections = 1});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const BarNavi(),
      drawer: width < wideBreakpoint ? const AppDrawer() : null,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final isPortrait = orientation == Orientation.portrait;
              return Column(
                children: [
                  // Indicador de orientación

                  // Contenido principal
                  Expanded(
                    // child: InteractiveViewer(
                    //   clipBehavior: Clip.antiAlias,
                    //   boundaryMargin: const EdgeInsets.all(20),
                    //   minScale: 1,
                    //   maxScale: 8,
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: constraints.maxWidth),
                        child: IntrinsicHeight(
                          child: _buildResponsiveContent(
                              constraints.maxWidth, isPortrait, context),
                        ),
                      ),
                    ),
                  ),
                  // ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildResponsiveContent(double screenWidth, bool isPortrait, context) {
    // Ajustamos los breakpoints basados en la orientación
    final adjustedWideBreakpoint =
        isPortrait ? wideBreakpoint : wideBreakpoint * 0.75;
    final adjustedMediumBreakpoint =
        isPortrait ? mediumBreakpoint : mediumBreakpoint * 0.75;

    if (screenWidth > adjustedWideBreakpoint) {
      return _buildWideLayout(context);
    } else if (screenWidth > adjustedMediumBreakpoint) {
      return _buildMediumLayout(context);
    } else {
      return _buildNarrowLayout(context);
    }
  }

  Widget _buildWideLayout(context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final List<String> imgList = [
      ImagesCarge.ban1,
      ImagesCarge.ban2,
      ImagesCarge.ban3,
      ImagesCarge.ban4,
      ImagesCarge.ban5,
    ];
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(26, 163, 224, 217),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: -100,
                        top: -100,
                        child: SizedBox(
                          child: Circumference(
                            opacity: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: -50,
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/images/rectangle_16.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "MEET & GREET",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "EXPERIENCE 2024",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: width / 11,
                        child: SizedBox(
                          width: width / 2,
                          height: 200,
                          child: AnimationMainText(
                              img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                              wiseAnimation: 4,
                              fontSized: width / 60,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      ),
                      Positioned(
                        top: width / 9.5,
                        left: 10,
                        child: SizedBox(
                          width: width / 1.5,
                          height: height / 10,
                          child: AnimationMainText(
                              img: "MEET & GREET",
                              wiseAnimation: 400,
                              fontSized: width / 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0),
                        ),
                      ),
                      Positioned(
                        top: width / 7,
                        left: 10,
                        child: SizedBox(
                          width: width / 1.5,
                          height: height / 10,
                          child: AnimationMainText(
                              img: "EXPERIENCE",
                              wiseAnimation: -300,
                              fontSized: width / 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0),
                        ),
                      ),
                      Positioned(
                        top: width / 5.5,
                        left: 10,
                        child: SizedBox(
                          width: width / 1.5,
                          height: height / 10,
                          child: AnimationMainText(
                              img: "2024",
                              wiseAnimation: 400,
                              fontSized: width / 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        right: 10,
                        child: ButtonMain(
                          heightB: height / 15,
                          widthB: width / 5,
                          title: "Boletos",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: width / 2,
                  height: height / 1.2,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(26, 163, 224, 217),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      clipBehavior: Clip.antiAlias,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(seconds: 5),
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
              ),
            ],
          ),
        ),
        const Expanded(child: HomePage()),
        const Expanded(child: LandingPage2()),
        const Expanded(child: LadingPage3()),
        Container(
          width: width,
          height: height / 3.5,
          child: Footer(),
        ),
      ],
    );
  }

  Widget _buildMediumLayout(context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final List<String> imgList = [
      ImagesCarge.ban1,
      ImagesCarge.ban2,
      ImagesCarge.ban3,
      ImagesCarge.ban4,
      ImagesCarge.ban5,
    ];

    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                clipBehavior: Clip.antiAlias,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 4),
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
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: -100,
                  top: -100,
                  child: SizedBox(
                    child: Circumference(
                      opacity: 100,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: -50,
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/rectangle_16.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MEET & GREET",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "EXPERIENCE 2024",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: width / 10,
                  child: SizedBox(
                    width: width,
                    height: 200,
                    child: AnimationMainText(
                        img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                        wiseAnimation: 4,
                        fontSized: width / 30,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                  ),
                ),
                Positioned(
                  top: width / 8,
                  left: 10,
                  child: SizedBox(
                    width: width,
                    height: 150,
                    child: AnimationMainText(
                        img: "MEET & GREET",
                        wiseAnimation: 400,
                        fontSized: width / 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                ),
                Positioned(
                  top: width / 5,
                  left: 10,
                  child: SizedBox(
                    width: width,
                    height: 150,
                    child: AnimationMainText(
                        img: "EXPERIENCE",
                        wiseAnimation: -300,
                        fontSized: width / 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                ),
                Positioned(
                  top: width / 3.5,
                  left: 10,
                  child: SizedBox(
                    width: width,
                    height: 150,
                    child: AnimationMainText(
                        img: "2024",
                        wiseAnimation: 400,
                        fontSized: width / 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: ButtonMain(
                    heightB: height / 19,
                    widthB: width / 3,
                    title: "Boletos",
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
              width: width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(26, 163, 224, 217),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(10)),
              ),
              child: CountdownPage()),
        ),
        Expanded(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: -150,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_15.png",
                      wiseAnimation: 600,
                    ),
                  ),
                ),
                Positioned(
                  left: width / 3.8,
                  top: -100,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_7.png",
                      wiseAnimation: -600,
                    ),
                  ),
                ),
                Positioned(
                  right: width / 3.7,
                  top: -150,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_9.png",
                      wiseAnimation: 600,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: -90,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_11.png",
                      wiseAnimation: -600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            width: width,
            child: Image.asset(
              'assets/images/maps.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: -150,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle.png",
                      wiseAnimation: 600,
                    ),
                  ),
                ),
                Positioned(
                  left: width / 3.8,
                  top: -100,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_13.png",
                      wiseAnimation: -600,
                    ),
                  ),
                ),
                Positioned(
                  right: width / 3.7,
                  top: -150,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangle_10.png",
                      wiseAnimation: 600,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: -100,
                  child: SizedBox(
                    width: width / 4.5,
                    height: height,
                    child: const AnimationMain(
                      img: "assets/images/rectangl.png",
                      wiseAnimation: -600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_6.png',
                    fit: BoxFit.fill,
                    width: width / 1.3,
                  ),
                  Text(
                    'Próximos Eventos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_3.png',
                    fit: BoxFit.fill,
                    width: width / 1.3,
                  ),
                  Text(
                    'Artículos Coleccionables',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_20.png',
                    fit: BoxFit.cover,
                    width: width / 1.4,
                  ),
                  Text(
                    'Meet & Greet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: width,
          height: height / 6,
          child: Footer(),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout(context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final List<String> imgList = [
      ImagesCarge.ban1,
      ImagesCarge.ban2,
      ImagesCarge.ban3,
      ImagesCarge.ban4,
      ImagesCarge.ban5,
    ];
    return Column(
      children: [
        Container(
          width: width,
          height: height / 2.5,
          decoration: const BoxDecoration(
            color: Color.fromARGB(26, 163, 224, 217),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 5,
                top: 10,
                child: SizedBox(
                  width: 90,
                  height: 90,
                  child: Image.asset(
                    'assets/images/rectangle_16.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: width / 4,
                child: SizedBox(
                  width: width,
                  height: 200,
                  child: AnimationMainText(
                      img: "EXPO REFORMA,CDMX 26 - 27 OCTUBRE 2024",
                      wiseAnimation: 4,
                      fontSized: width / 30,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
              ),
              Positioned(
                top: width / 3.8,
                left: 10,
                child: SizedBox(
                  width: width,
                  height: 150,
                  child: AnimationMainText(
                      img: "MEET & GREET",
                      wiseAnimation: 400,
                      fontSized: width / 7,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
              Positioned(
                top: width / 2.3,
                left: 10,
                child: SizedBox(
                  width: width,
                  height: 150,
                  child: AnimationMainText(
                      img: "EXPERIENCE",
                      wiseAnimation: -300,
                      fontSized: width / 7,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
              Positioned(
                top: width / 1.6,
                left: 10,
                child: SizedBox(
                  width: width,
                  height: 150,
                  child: AnimationMainText(
                      img: "2024",
                      wiseAnimation: 400,
                      fontSized: width / 7,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: ButtonMain(
                  heightB: height / 19,
                  widthB: width / 3,
                  title: "Boletos",
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height / 2.5,
          decoration: const BoxDecoration(
            color: Color.fromARGB(26, 163, 224, 217),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
          ),
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 1,
            maxScale: 8,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 4),
                viewportFraction: 1.0,
              ),
              items: imgList
                  .map(
                    (item) => Image.asset(
                      item,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        Container(
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            child: Center(child: CountdownPage())),
        Container(
          width: width,
          height: height / 2,
          decoration: const BoxDecoration(
            color: Color.fromARGB(26, 163, 224, 217),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: -150,
                child: SizedBox(
                  width: width / 4.5,
                  height: height,
                  child: const AnimationMain(
                    img: "assets/images/rectangle_15.png",
                    wiseAnimation: 600,
                  ),
                ),
              ),
              Positioned(
                left: width / 3.8,
                top: -100,
                child: SizedBox(
                  width: width / 4.5,
                  height: height,
                  child: const AnimationMain(
                    img: "assets/images/rectangle_7.png",
                    wiseAnimation: -600,
                  ),
                ),
              ),
              Positioned(
                right: width / 3.7,
                top: -150,
                child: SizedBox(
                  width: width / 4.5,
                  height: height,
                  child: const AnimationMain(
                    img: "assets/images/rectangle_9.png",
                    wiseAnimation: 600,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: -90,
                child: SizedBox(
                  width: width / 4.5,
                  height: height,
                  child: const AnimationMain(
                    img: "assets/images/rectangle_11.png",
                    wiseAnimation: -600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height / 2.5,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(26, 163, 224, 217),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
          ),
          child: Column(
            children: [
              Container(
                width: width,
                height: height / 2,
                child: Image.asset(
                  'assets/images/maps.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: -150,
                      child: SizedBox(
                        width: width / 4.5,
                        height: height,
                        child: const AnimationMain(
                          img: "assets/images/rectangle.png",
                          wiseAnimation: 600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 3.8,
                      top: -100,
                      child: SizedBox(
                        width: width / 4.5,
                        height: height,
                        child: const AnimationMain(
                          img: "assets/images/rectangle_13.png",
                          wiseAnimation: -600,
                        ),
                      ),
                    ),
                    Positioned(
                      right: width / 3.7,
                      top: -150,
                      child: SizedBox(
                        width: width / 4.5,
                        height: height,
                        child: const AnimationMain(
                          img: "assets/images/rectangle_10.png",
                          wiseAnimation: 600,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: -100,
                      child: SizedBox(
                        width: width / 4.5,
                        height: height,
                        child: const AnimationMain(
                          img: "assets/images/rectangl.png",
                          wiseAnimation: -600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_6.png',
                    fit: BoxFit.fill,
                    width: width / 1.3,
                  ),
                  Text(
                    'Próximos Eventos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_3.png',
                    fit: BoxFit.fill,
                    width: width / 1.3,
                  ),
                  Text(
                    'Artículos Coleccionables',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(26, 163, 224, 217),
            ),
            width: width,
            child: HoverContainer(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/rectangle_20.png',
                    fit: BoxFit.cover,
                    width: width / 1.4,
                  ),
                  Text(
                    'Meet & Greet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: width,
          height: height / 6.5,
          child: Footer(),
        ),
      ],
    );
  }
}
