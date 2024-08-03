import 'package:flutter/material.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/invite_grid.dart';
import 'package:flutter_app/utils/list_images.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';

class ListInvites extends StatelessWidget {
  const ListInvites({super.key});

  @override
  Widget build(BuildContext context) {
    double multiplier = ResponsiveUtil.getMultiplier(context);
    double av = ResponsiveUtil.getMultiplier(context);

    double width = MediaQuery.of(context).size.width;

    double widthContainer = multiplier == 1.0
        ? 1600
        : multiplier == .70
            ? 700
            : 900;
    double heightContainer = multiplier == 1.0
        ? 800
        : multiplier == .70
            ? 400
            : 250;

    double divisor = multiplier == 1.0
        ? 6
        : multiplier == .7
            ? 8
            : 12;

    double fontSize = multiplier == 1.0
        ? 1
        : multiplier == 0.7
            ? 1.8
            : 3.86;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Stack(
            children: [
              Positioned(
                left: -200 * multiplier,
                bottom: 1000 * multiplier,
                child: SizedBox(
                  width: 800 * multiplier,
                  height: 800 * multiplier,
                  child: Circumference(
                    widthC: 700 * multiplier,
                    heightC: 646 * multiplier,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                right: 90 * multiplier,
                bottom: 1000 * multiplier,
                child: SizedBox(
                  width: 145 * multiplier,
                  height: 80 * multiplier,
                  child: CirculosEnGrid(),
                ),
              ),
              Positioned(
                left: -200 * multiplier,
                bottom: 1100 * multiplier,
                child: SizedBox(
                  width: 600 * multiplier,
                  height: 600 * multiplier,
                  child: Circumference3(
                    widthC: 700 * multiplier,
                    heightC: 645.04 * multiplier,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                right: -250 * multiplier,
                top: 1000 * multiplier,
                child: SizedBox(
                  width: 800 * multiplier,
                  height: 800 * multiplier,
                  child: Circumference(
                    widthC: 700 * multiplier,
                    heightC: 646 * multiplier,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                left: 90 * multiplier,
                top: 950 * multiplier,
                child: SizedBox(
                  width: 145 * multiplier,
                  height: 80 * multiplier,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                right: -300 * multiplier,
                top: 1100 * multiplier,
                child: SizedBox(
                  width: 600 * multiplier,
                  height: 600 * multiplier,
                  child: Circumference3(
                    widthC: 700 * multiplier,
                    heightC: 646 * multiplier,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                left: -200 * multiplier,
                top: -250 * multiplier,
                child: SizedBox(
                  width: 800 * multiplier,
                  height: 800 * multiplier,
                  child: Circumference(
                    widthC: 700 * multiplier,
                    heightC: 646 * multiplier,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                right: 90 * multiplier,
                top: 290 * multiplier,
                child: SizedBox(
                  width: 145 * multiplier,
                  height: 80 * multiplier,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                left: -200 * multiplier,
                top: -270 * multiplier,
                child: SizedBox(
                  width: 600 * multiplier,
                  height: 600 * multiplier,
                  child: Circumference3(
                    widthC: 700 * multiplier,
                    heightC: 646 * multiplier,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                right: -200 * multiplier,
                bottom: -250 * multiplier,
                child: SizedBox(
                  width: 800 * multiplier,
                  height: 800 * multiplier,
                  child: Circumference(
                    widthC: 700 * multiplier,
                    heightC: 645.04 * multiplier,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                left: 90 * multiplier,
                bottom: 290 * multiplier,
                child: SizedBox(
                  width: 200 * multiplier,
                  height: 200 * multiplier,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                right: -200 * multiplier,
                bottom: -270 * multiplier,
                child: SizedBox(
                  width: 600 * multiplier,
                  height: 600 * multiplier,
                  child: Circumference3(
                    widthC: 700 * multiplier,
                    heightC: 645 * multiplier,
                    opacity: 225,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos del Box",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listBox),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos del Fútbol",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listFut),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos del Ring",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listLuch),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos NFL",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listNlf),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos MMA y UFC",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listUFC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "La mejor raquetbolista del mundo :",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listRacket),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Ídolos NBA",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listNba),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Única mujer mexicana en WWE:",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listWomanWwe),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer / divisor,
                        child: Text(
                          "Invitado especial de la WBC :",
                          style: TextStyle(
                            fontSize: (65 / fontSize),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: widthContainer,
                        height: heightContainer,
                        child: ImageGrid(images: ListImages.listBBX),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: width /
                    (av == 1.0
                        ? 12
                        : av == .65
                            ? 20
                            : -10),
                top: 0,
                child: SizedBox(
                  width: width /
                      (av == 1.0
                          ? 1.11
                          : av == .65
                              ? 1.11
                              : .9),
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
