import 'package:flutter/material.dart';
import 'package:flutter_app/utils/animation_card.dart';

class ImageGrid extends StatelessWidget {
  final List<String> images;
  final List<String> descrip;

  const ImageGrid({super.key, required this.images, required this.descrip});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 22,
          mainAxisSpacing: 22,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          if (images.isEmpty || descrip.isEmpty) {
            return const CircularProgressIndicator();
          } else {
            return RotatableImageCard(
              frontImage: images[index % images.length],
              description: descrip[index % descrip.length],
            );
          }
        },
      ),
    );
  }
}
