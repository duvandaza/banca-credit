import 'package:flutter/material.dart';

// ----------------------- ProductSans - Bold -----------------------
TextStyle textSansBold({
   required double size,
    double? height = 0,
    Color color = const Color(0xffFCFEFF)
}) {
  return TextStyle(
    fontFamily: 'ProductSansBold',
     color: color,
    fontSize: size,
    height: height,
  );
}

// ----------------------- ProductSans - Regular -----------------------


TextStyle textSansRegular({
   required double size,
    double? height = 0,
    Color color = const Color(0xffB1B5BB)
}) {
  return TextStyle(
    fontFamily: 'ProductSansRegular',
     color: color,
    fontSize: size,
    height: height,
  );
}