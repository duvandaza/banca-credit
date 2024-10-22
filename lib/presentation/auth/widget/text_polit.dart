import 'package:flutter/material.dart';
import '../../../config/theme/style.dart';

Widget textPolit(Size size) {
  return Flexible(
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan( 
        text: 'Acepto los ',
        style: textSansRegular( color: const Color(0xff0C1022), size: size.height * 0.018),
        children: [
          TextSpan(
            text:' Términos',
            style: textSansRegular(color: const Color(0xff5428F1), size: size.height * 0.018)
          ),
          TextSpan(
            text:' y ',
            style: textSansRegular(color: const Color(0xff0C1022), size: size.height * 0.018)
          ),
          TextSpan(
            text:' Condiciones',
            style: textSansRegular(color: const Color(0xff5428F1), size: size.height * 0.018)
          ),
          TextSpan(
            text:' y la ',
            style: textSansRegular(color: const Color(0xff0C1022), size: size.height * 0.018)
          ),
          TextSpan(
            text:' Política de privacidad ',
            style: textSansRegular(color: const Color(0xff5428F1), size: size.height * 0.018)
          ),
          TextSpan(
            text:'de Banca créditos',
            style: textSansRegular(color: const Color(0xff0C1022), size: size.height * 0.018)
          ),
        ]
      ),
    ),
  );
}