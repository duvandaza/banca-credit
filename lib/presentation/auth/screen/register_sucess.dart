import 'package:banca_credit/config/theme/style.dart';
import 'package:banca_credit/presentation/home/home.dart';
import 'package:banca_credit/presentation/widget/button_general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterSucess extends StatelessWidget {
  const RegisterSucess({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            top: -40,
            child: Image(
              image: AssetImage('assets/images/degradado.png'),
                fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: -size.height * 0.3,
            left: -size.width * 1.44,
            child: SvgPicture.asset(
              'assets/images/circle.svg',
              height: size.height * 0.8,
              width: size.width * 0.8,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/registerOk.svg',
                  height: size.height * 0.2,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: size.height * 0.02,),
                Text(
                  'Registro exitoso',
                  style: textSansBold(size: 25, color: const Color(0xff0C1022)),
                ),
                SizedBox(height: size.height * 0.01,),
                Text(
                  'Hemos guardado tus credenciales de forma exitosa, Presiona continuar para seguir adelante.',
                  style: textSansRegular(size: 16, color: const Color(0xff91A1B2)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.03,),
                ButtonGeneral(
                  title: 'Continuar',
                  color: const Color(0xff5428F1),
                  titleColor: Colors.white,
                  action: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  }
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}