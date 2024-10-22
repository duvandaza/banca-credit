import 'package:banca_credit/config/theme/style.dart';
import 'package:flutter/material.dart';

class ButtonGeneral extends StatelessWidget {
  const ButtonGeneral({
    super.key, 
    required this.title, 
    required this.color, 
    required this.action, 
    this.titleColor = Colors.black, this.icon, 
    this.horizontal = 0,
  });

  final String title;
  final Color color;
  final VoidCallback action;
  final Color? titleColor;
  final Widget? icon;
  final double? horizontal;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return Center(
      child: GestureDetector(
        onTap: action,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * horizontal!),
          width: size.width * 0.9,
          height: size.height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            border: Border.all(
              color: const Color(0xffC8D0D9),
            )
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: icon,
                ) : Container(),
                Text(
                  title,
                  style: textSansBold(
                    color: titleColor!,
                    size: 16
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}