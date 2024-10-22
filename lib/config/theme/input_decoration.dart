import 'package:banca_credit/config/theme/style.dart';
import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    String? hintText = '',
    String? error,
    Icon? icon
  }) {
    return InputDecoration(
      filled: false,
      fillColor: const Color(0xffFFFFFF),
      hintText: hintText,
      hintStyle:  textSansRegular(size: 16, color: Colors.black54),
      errorText: error,
      prefixIcon: icon,
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(
          width: 1,
          color: Colors.black12,
          style: BorderStyle.none,
        ),
      ),
    );
  }
}