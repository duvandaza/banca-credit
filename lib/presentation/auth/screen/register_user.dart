// ignore_for_file: use_build_context_synchronously

import 'package:banca_credit/config/theme/style.dart';
import 'package:banca_credit/presentation/auth/providers/user_form_provider.dart';
import 'package:banca_credit/presentation/auth/screen/login.dart';
import 'package:banca_credit/presentation/auth/screen/register_sucess.dart';
import 'package:banca_credit/presentation/auth/widget/register_backgroud.dart';
import 'package:banca_credit/presentation/widget/button_general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../widget/input_form.dart';
import '../widget/text_polit.dart';


class RegisterUserScreen extends StatefulWidget {
  const RegisterUserScreen({super.key});

  @override
  State<RegisterUserScreen> createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final form = Provider.of<UserFormProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          registerBackground(size),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.12,),
                  SvgPicture.asset('assets/images/logo.svg'),
                  SizedBox(height: size.height * 0.03,),
                  Text('Regístrate', style: textSansBold(size: 25, color: const Color(0xff0C1022)),),                                    
                  SizedBox(height: size.height * 0.01,),
                  Text('Solo te tomará unos minutos.', style: textSansRegular(size: 16, color: const Color(0xff91A1B2)),),
                  SizedBox(height: size.height * 0.03,),
                  InputTextValidation(
                    titulo: 'Nombre completo',
                    initial: form.name.value,
                    icon: const Icon(Icons.person_4_outlined),
                    hintText: 'Escribe tu nombre',
                    onChanged: (p0) => form.onNameChange(p0),
                    errorMessage: form.isPosting ? form.name.errorMessage : null,
                  ),
                  InputTextValidation(
                    titulo: 'Identificación',
                    initial: form.id.value,
                    hintText: 'Escribe tu número de identificación',
                    tipo: TextInputType.number,
                    onChanged: (p0) => form.onIdChange(p0),
                    errorMessage: form.isPosting ? form.id.errorMessage : null,
                  ),
                  InputTextValidation(
                    titulo: 'Email or Usuario',
                    hintText: 'Uname@mail.com',
                    initial: form.email.value,
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
                      textPolit(size)
                    ],
                  ),
                  SizedBox(height: size.height * 0.02,),
                  ButtonGeneral(
                    title: 'Continuar',
                    color: const Color(0xff5428F1),
                    titleColor: Colors.white,
                    action: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      final valor = await form.formSubmit();
                      print(valor);
                      if(valor)Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterSucess()));
                    }
                  ),
                  SizedBox(height: size.height * 0.03,),
                   GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())),
                     child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan( 
                          text: '¿Ya tienes una cuenta?',
                          style: textSansRegular( color: const Color(0xff808A93), size: size.height * 0.018),
                          children: [
                            TextSpan(
                              text:' Inicia sesión',
                              style: textSansRegular(color: const Color(0xff5428F1), size: size.height * 0.018)
                            ),
                          ]
                        ),
                      ),
                      ),
                   ),
                   SizedBox(height: size.height * 0.04,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
