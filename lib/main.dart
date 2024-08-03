import 'package:flutter/material.dart';
import 'package:flutter_app/pages/footer_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/utils/animation_card.dart';
import 'package:flutter_app/utils/screen_utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    return MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        primaryColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      title: 'Flutter App',
      home: Scaffold(
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
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: width,
                    height: height / 6,
                    child: Footer(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
