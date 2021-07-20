import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons(
      {Key? key,
      required this.iconSrc,
      required this.press,
      required this.iconColor})
      : super(key: key);
  final String iconSrc;
  final Function press;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.blue,
          ),
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20.0,
          width: 20.0,
          color: iconColor,
        ),
      ),
      onTap: () {
        press;
      },
    );
  }
}
