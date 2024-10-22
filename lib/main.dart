import 'package:banca_credit/presentation/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:banca_credit/presentation/auth/providers/login_form_provider.dart';
import 'package:banca_credit/presentation/auth/providers/user_form_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env['URL'] ?? '',
    anonKey: dotenv.env['ANONEY'] ?? '',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserFormProvider()),
        ChangeNotifierProvider(create: (_) => LoginFormProvider()),
      ],
      child: const MaterialApp(
        title: 'Banca Credit',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen()
      ),
    );
  }
}