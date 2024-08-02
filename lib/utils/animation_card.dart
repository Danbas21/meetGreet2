import 'package:flutter/material.dart';

class ImagenRotableCard extends StatelessWidget {
  String frontImage;
  String description;
  ImagenRotableCard(
      {super.key, required this.frontImage, required this.description});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RotatableImageCard(
            frontImage: frontImage, // Ruta de tu imagen
            description: description,
          ),
        ),
      ),
    );
  }
}

class RotatableImageCard extends StatefulWidget {
  final String frontImage;
  final String description;

  RotatableImageCard({required this.frontImage, required this.description});

  @override
  RotatableImageCardState createState() => RotatableImageCardState();
}

class RotatableImageCardState extends State<RotatableImageCard>
    with SingleTickerProviderStateMixin {
  bool _isFlipped = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCard() {
    setState(() {
      _isFlipped = !_isFlipped;
      if (_isFlipped) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.frontImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCard,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              final angle = _animation.value * 1;
              return Transform(
                transform: Matrix4.rotationY(angle),
                alignment: Alignment.center,
                child: angle >= 1.57
                    ? Transform(
                        transform: Matrix4.rotationY(3.14),
                        alignment: Alignment.center,
                        child: _buildBackSide(),
                      )
                    : _buildFrontSide(),
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.add_circle,
                  color: Color.fromARGB(255, 226, 172, 10), size: 15),
              onPressed: () => _showPopup(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrontSide() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          widget.frontImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildBackSide() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
