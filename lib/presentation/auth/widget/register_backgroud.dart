import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget registerBackground(Size size) {
  return Stack(
    children: [
      Positioned(
        top: -size.height * 0.32,
        right: -size.width * 1.33,
        child: SvgPicture.asset(
          'assets/images/circle.svg',
          height: size.height * 0.8,
          width: size.width * 0.8,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: -size.height * 0.22,
        left: size.width * 0.02,
        child: SvgPicture.asset(
          'assets/images/spinner-two.svg',
          fit: BoxFit.cover,
          height: size.height * 1,
        ),
      ),
      Positioned(
        top: -size.height * 0.33,
        left: size.width * 0.02,
        child: SvgPicture.asset(
          'assets/images/spinner-two.svg',
          fit: BoxFit.cover,
          height: size.height * 1.2,
        ),
      ),
    ],
  );
}