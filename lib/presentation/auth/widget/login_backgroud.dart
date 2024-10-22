import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget loginBackground(Size size) {
  return Stack(
    children: [
      Positioned(
        top: -size.height * 0.35,
        left: -size.width * 0.4,
        child: SvgPicture.asset(
          'assets/images/circle.svg',
          height: size.height * 0.8,
          width: size.width * 0.8,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: -size.height * 0.3,
        right: -size.width * 1.44,
        child: SvgPicture.asset(
          'assets/images/circle.svg',
          height: size.height * 0.8,
          width: size.width * 0.8,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: size.height * 0.15,
        left: 0,
        child: SvgPicture.asset(
          'assets/images/spinner-two.svg',
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}