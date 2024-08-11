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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Web Responsiva',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResponsiveZoomableWebPage(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     double av = ResponsiveUtil.getMultiplier(context);

//     return MaterialApp(
//       theme: ThemeData().copyWith(
//         scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
//         primaryColor: const Color.fromARGB(255, 255, 255, 255),
//       ),
//       title: 'Flutter App',
//       home: Scaffold(
//         appBar: const BarNavi(),
//         drawer: width < 1100 ? const AppDrawer() : null,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: height,
//                 width: width,
//                 child: const BannerApp(),
//               ),
//               SizedBox(
//                 width: width,
//                 height: height /
//                     (av == 1.0
//                         ? 1.5
//                         : av == .65
//                             ? 1.65
//                             : 2.63),
//                 child: const HomePage(),
//               ),
//               SizedBox(
//                 width: width,
//                 height: height /
//                     (av == 1.0
//                         ? 1.5
//                         : av == .65
//                             ? 1.3
//                             : 2.63),
//                 child: const LandingPage2(),
//               ),
//               SizedBox(
//                 width: width,
//                 height: height /
//                     (av == 1.0
//                         ? 1.3
//                         : av == .65
//                             ? 1.7
//                             : 2.63),
//                 child: const LadingPage3(),
//               ),
//               SizedBox(
//                 width: width,
//                 height: height / 6.5,
//                 child: Footer(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

enum Section { one, two, three }

class ResponsiveZoomableWebPage extends StatelessWidget {
  static const double wideBreakpoint = 1200;
  static const double mediumBreakpoint = 600;

  final int numberOfSections;

  const ResponsiveZoomableWebPage({super.key, this.numberOfSections = 3});

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
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Orientación: ${isPortrait ? 'Portrait' : 'Landscape'}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Contenido principal
                  Expanded(
                    child: InteractiveViewer(
                      boundaryMargin: const EdgeInsets.all(20),
                      minScale: 0.5,
                      maxScale: 4,
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(minWidth: constraints.maxWidth),
                          child: IntrinsicHeight(
                            child: _buildResponsiveContent(
                                constraints.maxWidth, isPortrait),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildResponsiveContent(double screenWidth, bool isPortrait) {
    // Ajustamos los breakpoints basados en la orientación
    final adjustedWideBreakpoint =
        isPortrait ? wideBreakpoint : wideBreakpoint * 0.75;
    final adjustedMediumBreakpoint =
        isPortrait ? mediumBreakpoint : mediumBreakpoint * 0.75;

    if (screenWidth > adjustedWideBreakpoint) {
      return _buildWideLayout();
    } else if (screenWidth > adjustedMediumBreakpoint) {
      return _buildMediumLayout();
    } else {
      return _buildNarrowLayout();
    }
  }

  Widget _buildWideLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          numberOfSections,
          (index) => Expanded(
              child: _buildSection(
                  Section.values[index % Section.values.length]))),
    );
  }

  Widget _buildMediumLayout() {
    return Column(
      children: [
        Row(
          children: List.generate(2,
              (index) => Expanded(child: _buildSection(Section.values[index]))),
        ),
        if (numberOfSections > 2) _buildSection(Section.three),
      ],
    );
  }

  Widget _buildNarrowLayout() {
    return Column(
      children: List.generate(
          numberOfSections,
          (index) =>
              _buildSection(Section.values[index % Section.values.length])),
    );
  }

  Widget _buildSection(Section section) {
    return Container(
      color: _getColor(section),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sección ${section.index + 1}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                  'Contenido ${index + 1} para Sección ${section.index + 1}'),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColor(Section section) {
    switch (section) {
      case Section.one:
        return Colors.blue.shade100;
      case Section.two:
        return Colors.green.shade100;
      case Section.three:
      default:
        return Colors.orange.shade100;
    }
  }
}
