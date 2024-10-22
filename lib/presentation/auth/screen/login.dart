// ignore_for_file: use_build_context_synchronously

import 'package:banca_credit/config/theme/style.dart';
import 'package:banca_credit/presentation/auth/providers/login_form_provider.dart';
import 'package:banca_credit/presentation/auth/screen/register_user.dart';
import 'package:banca_credit/presentation/home/home.dart';
import 'package:banca_credit/presentation/widget/button_general.dart';
import 'package:banca_credit/presentation/widget/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widget/login_backgroud.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final form = Provider.of<LoginFormProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          loginBackground(size),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.12,),
                  SvgPicture.asset('assets/images/logo.svg'),
                  SizedBox(height: size.height * 0.03,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan( 
                        text: 'Inicia sesión o continua,',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: size.height * 0.02),
                        children: const [
                          TextSpan(
                            text:' solo te tomará unos minutos.',
                            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black)
                          ),
                        ]
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04,),
                  InputTextValidation(
                    titulo: 'Email or Usuario',
                    hintText: 'Uname@mail.com',
                    icon: const Icon(Icons.person_4_outlined),
                    onChanged: (p0) => form.onEmailChange(p0),
                    errorMessage: form.isPosting ? form.email.errorMessage : null,
                  ),
                  InputTextValidation(
                    titulo: 'Contraseña',
                    hintText: 'Password',
                    initial: form.password.value,
                    icon: const Icon(Icons.lock_outline_rounded),
                    obscureText: true,
                    onChanged: (p0) => form.onPasswordChange(p0),
                    errorMessage: form.isPosting ? form.password.errorMessage : null,
                  ),
                  SizedBox(height: size.height * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text("Recordarme", style: textSansBold(size: 14, color: Colors.black),),
                        ],
                      ),
                      Text(
                        '¿Olvide mi contraseña?',
                        style: textSansBold(color: const Color(0xff5428F1), size: 14),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.01,),
                  ButtonGeneral(
                    title: 'Iniciar sesión',
                    color: const Color(0xff5428F1),
                    titleColor: Colors.white,
                    action: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      final valor = await form.formSubmit();
                      print(valor);
                      if(valor)Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    }
                  ),
                  SizedBox(height: size.height * 0.03,),
                  SvgPicture.asset(
                    'assets/images/line.svg'
                  ),
                  SizedBox(height: size.height * 0.02,),
                  ButtonGeneral(
                    action: (){},
                    title: 'Ingresa con Google',
                    horizontal: 0.04,
                    color: Colors.white,
                    icon: SvgPicture.asset(
                    'assets/images/google.svg'
                    ),
                  ),
                  SizedBox(height: size.height * 0.02,),
                  ButtonGeneral(
                    action: (){},
                    title: 'Ingresa con Google',
                    horizontal: 0.04,
                    color: Colors.white,
                    icon: SvgPicture.asset(
                    'assets/images/apple.svg'
                    ),
                  ),
                  SizedBox(height: size.height * 0.03,),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterUserScreen())),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan( 
                          text: '¿No tienes una cuenta?',
                          style: textSansRegular( color: const Color(0xff808A93), size: size.height * 0.018),
                          children: [
                            TextSpan(
                              text:' Regístrate',
                              style: textSansRegular(color: const Color(0xff5428F1), size: size.height * 0.018)
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
