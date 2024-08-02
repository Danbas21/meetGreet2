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
    double multiplier = ResponsiveUtil.getMultiplier(context);

    double fontSize = multiplier == 1.0
        ? 1
        : multiplier == 0.65
            ? 1.5
            : 2;

    String paragraph =
        '''ENTRADA PARA AMBOS DÍAS.\nTENDRÁS ACCESO A TODOS LOS DEPORTISTAS.\nPODRÁS LLEVAR TU ARTÍCULO PREFERIDO PARA QUE LO AUTOGRAFÍEN.\nFILAS PREFERENTES PARA LOS AUTÓGRAFOS Y FOTOGRAFÍAS.\nARTÍCULOS DE REGALO.\n5 AUTÓGRAFOS DEL EVENTO PARA AUTENTIFICAR CON BECKETT.''';

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              left: -200,
              bottom: 1000,
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
              left: -200,
              bottom: 1100,
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
              right: -250,
              top: 1000,
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
              left: 90,
              top: 950,
              child: SizedBox(
                width: 250 * multiplier,
                height: 250 * multiplier,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              right: -300,
              top: 1100,
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
              left: -200,
              top: -250,
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
              right: 90,
              top: 290,
              child: SizedBox(
                width: 200 * multiplier,
                height: 200 * multiplier,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              left: -200,
              top: -270,
              child: SizedBox(
                width: 600 * multiplier,
                height: 600,
                child: Circumference3(
                  widthC: 700 * multiplier,
                  heightC: 646 * multiplier,
                  opacity: 225,
                ),
              ),
            ),
            Positioned(
              right: -200,
              bottom: -250,
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
              left: 90,
              bottom: 290,
              child: SizedBox(
                width: 200 * multiplier,
                height: 200 * multiplier,
                child: const CirculosEnGrid(),
              ),
            ),
            Positioned(
              right: -200,
              bottom: -270,
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
              left: multiplier == 1.0
                  ? 80
                  : multiplier == .65
                      ? 30
                      : 10,
              top: multiplier == 1.0
                  ? 400
                  : multiplier == .65
                      ? 430
                      : 330,
              child: SizedBox(
                width: 900 * multiplier,
                height: 180 * multiplier,
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
              left: multiplier == 1.0
                  ? 30
                  : multiplier == .65
                      ? 30
                      : 10,
              top: multiplier == 1.0
                  ? 160
                  : multiplier == .65
                      ? 30
                      : 45,
              child: SizedBox(
                width: 900 * multiplier,
                height: 150 * multiplier,
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
              left: multiplier == 1.0
                  ? 115
                  : multiplier == .65
                      ? 35
                      : 15,
              top: multiplier == 1
                  ? 470
                  : multiplier == .65
                      ? 550
                      : 420,
              child: SizedBox(
                width: 800 * multiplier,
                height: 400 * multiplier,
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
              right: multiplier == 1.0
                  ? 200
                  : multiplier == .7
                      ? 40
                      : 80,
              top: multiplier == .45 ? 90 : 390,
              child: Container(
                width: 500 * multiplier,
                height: 500 * multiplier,
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
              right: multiplier == 1.0
                  ? 15
                  : multiplier == .65
                      ? -35
                      : -5,
              top: multiplier == 1.0
                  ? 520
                  : multiplier == .65
                      ? 480
                      : 150,
              child: SizedBox(
                width: 900 * multiplier,
                height: 220 * multiplier,
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
              left: multiplier == 1.0
                  ? 600
                  : multiplier == .65
                      ? 80
                      : 10,
              bottom: multiplier == 1.0
                  ? 400
                  : multiplier == .65
                      ? 450
                      : 40,
              child: SizedBox(
                child: ButtonMain(
                  widthB: 290 * multiplier,
                  heightB: 80 * multiplier,
                  title: 'COMPRAR BOLETOS',
                ),
              ),
            ),
            Positioned(
              right: 50 * multiplier,
              top: 0 * multiplier,
              child: SizedBox(
                width: 900 * multiplier,
                height: 70 * multiplier,
                child: BarNaviv(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
