import 'package:banca_credit/config/theme/style.dart';
import 'package:banca_credit/presentation/widget/button_general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/input_form.dart';

class HomePapge extends StatelessWidget {
  const HomePapge({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Hola Jesús G.', style: textSansRegular(size: 25, color: Colors.black),),
                      SizedBox(width: size.width * 0.02,),
                      const Image(
                        image: AssetImage(
                          'assets/images/hand.png',
                        ),
                      )            
                    ],
                  ),
                  SvgPicture.asset('assets/images/alarm.svg'),
                ],
              ),
              SizedBox(height: size.height * 0.05,),
              Row(
                children: [
                  Text('Simulador de crédito', style: textSansBold(size: 25, color: const Color(0xff5428F1)),),
                  SizedBox(width: size.width * 0.02,),
                  SvgPicture.asset('assets/images/excla.svg'),
                ]
              ),
              SizedBox(height: size.height * 0.02,),
              Text('Ingresa los datos para tu crédito según lo que necesites.',
                style: textSansRegular(size: 18, color: const Color(0xff0C1022)),
              ),
              SizedBox(height: size.height * 0.02,),
              const InputTextValidation(
                titulo: '¿Qué tipo de créditos deseas realizar?',
                hintText: 'Selecciona el tipo de créditos',
              ),
              SizedBox(height: size.height * 0.02,),
              const InputTextValidation(
                titulo: '¿Cuántos es tu salario base?',
                hintText: "\$10'000.000,00",
              ),
              Text(
                'Digíta tu salario para calcular el préstamo que necesitas',
                style: textSansRegular(size: 12, color: const Color(0xff525B64)),
              ),
              SizedBox(height: size.height * 0.02,),
              const InputTextValidation(
                titulo: '',
                enable: false,
                hintText: "\$ 0",
              ),
              const InputTextValidation(
                titulo: '¿A cuántos meses?',
                hintText: "48",
              ),
              SizedBox(height: size.height * 0.02,),
              ButtonGeneral(
                title: 'Simular',
                color: const Color(0xff5428F1),
                titleColor: Colors.white,
                action: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}