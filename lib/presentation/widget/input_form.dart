import 'package:flutter/material.dart';

import '../../config/theme/input_decoration.dart';
import '../../config/theme/style.dart';

class InputTextValidation extends StatelessWidget {
  const InputTextValidation({
    super.key,
    required this.titulo,
    this.hintText,
    this.tipo,
    this.onChanged,
    this.errorMessage,
    this.obscureText = false,
    this.validator,
    this.initial,
    this.enable = true,
    this.controller, 
    this.icon,
  });

  final Function(String)? onChanged;
  final String? initial;
  final String? errorMessage;
  final bool obscureText;
  final String titulo;
  final String? hintText;
  final TextInputType? tipo;
  final String? Function(String?)? validator;
  final bool? enable;
  final TextEditingController? controller;
  final Icon? icon; 

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo, style: textSansRegular(size: 16, color: Colors.black54)),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            initialValue: initial,
            controller: controller,
            keyboardType: tipo,
            validator: validator,
            enabled: enable,
            obscureText: obscureText,
            onChanged: onChanged,
            autofocus: false,
            decoration:
                InputDecorations.authInputDecoration(hintText: hintText, error: errorMessage, icon: icon),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}