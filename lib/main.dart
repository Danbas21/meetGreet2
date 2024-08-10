import 'package:flutter/material.dart';
import 'package:flutter_app/pages/baner_principal.dart';
import 'package:flutter_app/pages/drawer_page.dart';
import 'package:flutter_app/pages/footer_page.dart';
import 'package:flutter_app/pages/lading_page.dart';
import 'package:flutter_app/pages/lading_page_2.dart';
import 'package:flutter_app/pages/lading_page_3.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/screen_utils.dart';

void main() {
  runApp(const MyApp());
}

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
        appBar: const BarNavi(),
        drawer: width < 1100 ? const AppDrawer() : null,
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
    );
  }
}
