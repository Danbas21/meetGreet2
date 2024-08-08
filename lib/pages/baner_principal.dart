import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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

      return Stack(
        children: [
          Positioned.fill(
            left: width / 1.8,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(121, 9, 92, .5),
                  Color.fromRGBO(85, 0, 255, .5),
                ], begin: Alignment.centerRight, end: Alignment.centerLeft),
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  clipBehavior: Clip.antiAlias,
                  height: height,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 3000),
                  enlargeCenterPage: true,
                  viewportFraction: 2.0,
                ),
                items: imgList
                    .map((item) =>
                        Image.asset(item, fit: BoxFit.fill, width: width / 2.2))
                    .toList(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width / 1.8,
              height: height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(85, 0, 255, .5),
                  Color.fromRGBO(121, 9, 92, .5),
                  Color.fromRGBO(2, 0, 36, 0.5),
                ], begin: Alignment.centerRight, end: Alignment.centerLeft),
              ),
            ),
          ),
        ],
      );
    });
  }
}
