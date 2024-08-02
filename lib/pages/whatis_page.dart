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
    String paragraph =
        '''Meet & Greet Experience será el primer evento de firma de autógrafos en todo México, donde contaremos con la asistencia de los mejores deportistas en la historia de México. Podrás convivir con ellos, tomarte una foto, firmar tu artículo y autenticarlo con la empresa líder en Estados Unidos, BECKETT.''';
    double multiplier = ResponsiveUtil.getMultiplier(context);

    double widthContainer = multiplier == 1.0
        ? 750
        : multiplier == .65
            ? 700
            : width;
    double heightContainer = multiplier == 1.0 ? 1200 : height;

    double divisor = multiplier == 1.0
        ? 1
        : multiplier == .65
            ? 1.4
            : 2;
    double spaceElement = multiplier == 1.0 ? 3 : 2.7;

    double widthMultiplier = multiplier == 1.0 ? 1.3 : 1.45;
    double heightMultiplier = multiplier == 1.0 ? 1.3 : 1.12;
    double fontSize = multiplier == 1.0
        ? 1
        : multiplier == 0.7
            ? 1.8
            : 3.86;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              left: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? -214
                      : 0,
              top: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? -288
                      : -200,
              child: SizedBox(
                width: 950 * multiplier,
                height: 950 * multiplier,
                child: Circumference(
                  widthC: 900 * multiplier,
                  heightC: 900 * multiplier,
                  opacity: 100,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? -420
                      : -250,
              child: SizedBox(
                width: 950 * multiplier,
                height: 950 * multiplier,
                child: Circumference2(
                  widthC: 900 * multiplier,
                  heightC: 900 * multiplier,
                  opacity: 50,
                ),
              ),
            ),
            Positioned(
              left: multiplier == 1.0
                  ? 160
                  : multiplier == .65
                      ? 350
                      : 40,
              top: multiplier == 1.0
                  ? 18
                  : multiplier == .65
                      ? 80
                      : 90,
              child: SizedBox(
                width: 250 * multiplier,
                height: 250 * multiplier,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              left: -300,
              top: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? 700
                      : 323,
              child: SizedBox(
                width: 950 * multiplier,
                height: 950 * multiplier,
                child: Circumference(
                  widthC: 900 * multiplier,
                  heightC: 900 * multiplier,
                  opacity: 50,
                ),
              ),
            ),
            Positioned(
              left: multiplier == 1.0
                  ? 160
                  : multiplier == .65
                      ? null
                      : 80,
              top: multiplier == 1.0
                  ? 18
                  : multiplier == .65
                      ? -25
                      : 30,
              right: multiplier == 1.0
                  ? 18
                  : multiplier == .65
                      ? 0
                      : null,
              child: Container(
                width: widthContainer / divisor,
                height: heightContainer / divisor,
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
              left: 50 * multiplier,
              top: 90 * multiplier,
              child: SizedBox(
                width: 400 * multiplier,
                height: 150 * multiplier,
                child: Text(
                  '¿QUE ES?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 75 * multiplier,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 290,
              bottom: 20,
              child: SizedBox(
                width: 250 * multiplier,
                height: 250 * multiplier,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              left: multiplier == 1.0
                  ? 160
                  : multiplier == .65
                      ? 0
                      : 40,
              top: multiplier == 1.0
                  ? 18
                  : multiplier == .65
                      ? null
                      : null,
              bottom: multiplier == 1.0
                  ? 18
                  : multiplier == .65
                      ? 0
                      : -35,
              child: Container(
                width: 250 * multiplier,
                height: 850 * multiplier,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/rectangle_1.png',
                      ),
                      fit: BoxFit.contain,
                      opacity: .15),
                ),
              ),
            ),
            Positioned(
              left: multiplier == 1.0
                  ? 1100
                  : multiplier == 0.65
                      ? 150
                      : 10,
              bottom: multiplier == 1.0
                  ? 140
                  : multiplier == 0.65
                      ? -300
                      : -220,
              child: SizedBox(
                width: widthContainer,
                height: heightContainer,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0 * multiplier,
                      right: 0 * multiplier,
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ListView.builder(
                          itemCount: ListImages.listImage.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0) * multiplier,
                              child: Image.asset(
                                ListImages.listImage[index],
                                fit: BoxFit.contain,
                                width: widthContainer,
                                height: heightContainer,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: multiplier == .65 ? null : 2,
              top: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? 600
                      : 390,
              left: multiplier == 1
                  ? 700
                  : multiplier == .65
                      ? 20
                      : 20,
              child: SizedBox(
                width: 800 * multiplier,
                height: 400 * multiplier,
                child: Text(
                  paragraph,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30 * multiplier,
                  ),
                ),
              ),
            ),
            Positioned(
              right: multiplier == .65 ? 350 : 40,
              bottom: multiplier == 1.0
                  ? 400
                  : multiplier == .65
                      ? 550
                      : 350,
              child: Text(
                '@MANCAVE_AUTOGRAPHS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12 * multiplier,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0 * multiplier,
              top: 0 * multiplier,
              child: SizedBox(
                width: 850 * multiplier,
                height: 90 * multiplier,
                child: const BarNaviv(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
