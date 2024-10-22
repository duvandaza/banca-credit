import 'package:banca_credit/presentation/auth/screen/login.dart';
import 'package:banca_credit/presentation/auth/screen/register_user.dart';
import 'package:banca_credit/presentation/widget/button_general.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: Colors.black.withOpacity(0.4),
          height: size.width * 1,
          width: size.height * 1,
          child: Image(
            image: AssetImage('assets/images/$image'),
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
              child: Text(title,
                style: const TextStyle(color: Colors.white, fontSize:28),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: size.height * 0.03,),
            ButtonGeneral(
              action: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              color: Colors.white,
              title: 'Ingresar',
            ),
            SizedBox(height: size.height * 0.01,),
            ButtonGeneral(
              action: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterUserScreen()));
              },
              color: const Color(0xff5428F1),
              titleColor: Colors.white,
              title: 'Registrarme',
            ),
            SizedBox(height: size.height * 0.04,),
          ],
        )
      ],
    );
  }
}

