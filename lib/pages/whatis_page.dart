import 'package:flutter/material.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/list_image.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class WhatIsPage extends StatelessWidget {
  const WhatIsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);
    String paragraph =
        '''Meet & Greet Experience será el primer evento de firma de autógrafos en todo México, donde contaremos con la asistencia de los mejores deportistas en la historia de México. Podrás convivir con ellos, tomarte una foto, firmar tu artículo y autenticarlo con la empresa líder en Estados Unidos, BECKETT.''';

    return Scaffold(
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(100),
        minScale: 0.1,
        maxScale: 1.6,
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Positioned(
                bottom: height /
                    (av == .45
                        ? -14
                        : av == .65
                            ? -14
                            : -25),
                left: width /
                    (av == .45
                        ? 1.8
                        : av == .65
                            ? 2
                            : 2),
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
                bottom: -height / 3,
                child: SizedBox(
                  width: width / 1.7,
                  height: height / 1.2,
                  child: const Circumference2(
                    widthC: 900,
                    heightC: 900,
                    opacity: 50,
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
                right: width / 2,
                top: height / 2,
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
                left: av == 1.0
                    ? width / 15
                    : av == .65
                        ? null
                        : 10,
                top: av == 1.0
                    ? height / 15
                    : av == .65
                        ? -25
                        : 30,
                child: Container(
                  width: width / 2,
                  height: height,
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
                left: width / 10,
                top: height / 10,
                child: SizedBox(
                  width: width,
                  height: height,
                  child: Text(
                    '¿QUE ES?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 20,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
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
                left: width / 2.5,
                bottom: height / 2.3,
                child: SizedBox(
                  width: width / 1.7,
                  height: height / 2,
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: ListView.builder(
                      itemCount: ListImages.listImage.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0) * av,
                          child: Image.asset(
                            ListImages.listImage[index],
                            fit: BoxFit.contain,
                            width: width / 1.9,
                            height: height,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height /
                    (av == 1
                        ? 2
                        : av == .65
                            ? 2.3
                            : 2.0),
                left: width /
                    (av == 1
                        ? 2
                        : av == .65
                            ? 2.3
                            : 2),
                child: SizedBox(
                  width: width / 2,
                  height: height / 2,
                  child: Text(
                    paragraph,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: width / 60,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: av == .65 ? 350 : 40,
                bottom: av == 1.0
                    ? 400
                    : av == .65
                        ? 550
                        : 350,
                child: Text(
                  '@MANCAVE_AUTOGRAPHS',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12 * av,
                    fontWeight: FontWeight.bold,
                  ),
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
    );
  }
}
