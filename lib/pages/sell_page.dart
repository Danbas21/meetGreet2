import 'package:flutter/material.dart';
import 'package:flutter_app/utils/bar_navegacion.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:flutter_app/utils/widget_button.dart';

import 'package:flutter_app/utils/widget_circulo.dart';
import 'package:flutter_app/utils/widget_grid_cir.dart';
import 'package:intl/intl.dart';

class SellTicket extends StatelessWidget {
  const SellTicket({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);

    double fontSize = av == 1.0
        ? 1
        : av == 0.65
            ? 1.5
            : 2;

    String paragraph =
        '''ENTRADA PARA AMBOS DÍAS.\nTENDRÁS ACCESO A TODOS LOS DEPORTISTAS.\nPODRÁS LLEVAR TU ARTÍCULO PREFERIDO PARA QUE LO AUTOGRAFÍEN.\nFILAS PREFERENTES PARA LOS AUTÓGRAFOS Y FOTOGRAFÍAS.\nARTÍCULOS DE REGALO.\n5 AUTÓGRAFOS DEL EVENTO PARA AUTENTIFICAR CON BECKETT.''';

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
                left: -200,
                bottom: 1100,
                child: SizedBox(
                  width: 600 * av,
                  height: 600 * av,
                  child: Circumference3(
                    widthC: width / 1.7,
                    heightC: height / 1.2,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                right: -250,
                top: 1000,
                child: SizedBox(
                  width: 800 * av,
                  height: 800 * av,
                  child: Circumference(
                    widthC: 700 * av,
                    heightC: 646 * av,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 950,
                child: SizedBox(
                  width: 250 * av,
                  height: 250 * av,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                right: -300,
                top: 1100,
                child: SizedBox(
                  width: 600 * av,
                  height: 600 * av,
                  child: Circumference3(
                    widthC: 700 * av,
                    heightC: 645.04 * av,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                left: -200,
                top: -250,
                child: SizedBox(
                  width: 800 * av,
                  height: 800 * av,
                  child: Circumference(
                    widthC: 700 * av,
                    heightC: 645.04 * av,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                right: 90,
                top: 290,
                child: SizedBox(
                  width: 200 * av,
                  height: 200 * av,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                left: -200,
                top: -270,
                child: SizedBox(
                  width: 600 * av,
                  height: 600,
                  child: Circumference3(
                    widthC: 700 * av,
                    heightC: 646 * av,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                right: -200,
                bottom: -250,
                child: SizedBox(
                  width: 800 * av,
                  height: 800 * av,
                  child: Circumference(
                    widthC: 700 * av,
                    heightC: 646 * av,
                    opacity: 100,
                  ),
                ),
              ),
              Positioned(
                left: 90,
                bottom: 290,
                child: SizedBox(
                  width: 200 * av,
                  height: 200 * av,
                  child: const CirculosEnGrid(),
                ),
              ),
              Positioned(
                right: -200,
                bottom: -270,
                child: SizedBox(
                  width: 600 * av,
                  height: 600 * av,
                  child: Circumference3(
                    widthC: 700 * av,
                    heightC: 646 * av,
                    opacity: 225,
                  ),
                ),
              ),
              Positioned(
                left: av == 1.0
                    ? 80
                    : av == .65
                        ? 30
                        : 10,
                top: av == 1.0
                    ? 400
                    : av == .65
                        ? 430
                        : 330,
                child: SizedBox(
                  width: 900 * av,
                  height: 180 * av,
                  child: Text(
                    "BOLETO VIP. \n${NumberFormat.currency(locale: 'es_MX', symbol: '\$').format(22000)} \n hasta 12 meses sin intereses.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: (39 / fontSize),
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: av == 1.0
                    ? 30
                    : av == .65
                        ? 30
                        : 10,
                top: av == 1.0
                    ? 160
                    : av == .65
                        ? 30
                        : 45,
                child: SizedBox(
                  width: 900 * av,
                  height: 150 * av,
                  child: Text(
                    'VENTA DE BOLETOS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: (69 / fontSize),
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: av == 1.0
                    ? 115
                    : av == .65
                        ? 35
                        : 15,
                top: av == 1
                    ? 620
                    : av == .65
                        ? 550
                        : 420,
                child: SizedBox(
                  width: 800 * av,
                  height: 400 * av,
                  child: Text(
                    paragraph,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: (17 / fontSize),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: av == 1.0
                    ? 120
                    : av == .7
                        ? 40
                        : 80,
                top: av == .45 ? 90 : 390,
                child: Container(
                  width: 500 * av,
                  height: 500 * av,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(55, 83, 158, 228),
                      width: 10,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: av == 1.0
                    ? -50
                    : av == .65
                        ? -35
                        : -5,
                top: av == 1.0
                    ? 520
                    : av == .65
                        ? 480
                        : 150,
                child: SizedBox(
                  width: 900 * av,
                  height: 220 * av,
                  child: Text(
                    '26/27\nOCTUBRE\nHORARIO\n10:00 - 19:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: (35 / fontSize),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: av == 1.0
                    ? 400
                    : av == .65
                        ? 80
                        : 10,
                bottom: av == 1.0
                    ? 300
                    : av == .65
                        ? 450
                        : 40,
                child: SizedBox(
                  child: ButtonMain(
                    widthB: 290 * av,
                    heightB: 80 * av,
                    title: 'COMPRAR BOLETOS',
                  ),
                ),
              ),
              Positioned(
                right: 50 * av,
                top: 0 * av,
                child: SizedBox(
                  width: 900 * av,
                  height: 70 * av,
                  child: BarNaviv(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
