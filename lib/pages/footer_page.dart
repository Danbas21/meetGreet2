import 'package:flutter/material.dart';
import 'package:flutter_app/utils/screen_utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);
    return Container(
      color: Color.fromARGB(255, 121, 152, 184), // Gris Oxford
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 10),
          Image.asset(
            'assets/images/rectangle_18.png',
            width: width / 10,
          ),
          SizedBox(height: 5),
          Text(
            'Dirección\nBoulevard Interlomas 5 Centro Urbano San Fernando. La herradura 52786 Huixquilucan. Estado de México.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: width / 100),
          ),
          SizedBox(width: 10),
          SocialIconButton(
            icon: FontAwesomeIcons.facebookF,
            url: 'https://facebook.com',
          ),
          SizedBox(width: 10),
          SocialIconButton(
            icon: FontAwesomeIcons.instagram,
            url: 'https://www.instagram.com/meetandgreet_experience_mexico/',
          ),
        ],
      ),
    );
  }
}

class SocialIconButton extends StatefulWidget {
  final IconData icon;
  final String url;

  const SocialIconButton({required this.icon, required this.url});

  @override
  _SocialIconButtonState createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double av = ResponsiveUtil.getMultiplier(context);
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // Aquí puedes manejar la lógica para abrir la URL
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _isHovered ? Colors.white : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            widget.icon,
            color: _isHovered ? const Color(0xFF343A40) : Colors.white,
            size: width / 80,
          ),
        ),
      ),
    );
  }
}
