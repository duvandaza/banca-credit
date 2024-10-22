import 'package:banca_credit/presentation/onboarding/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_presenter/flutter_story_presenter.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final controller = FlutterStoryController();
  final screen = [
    const OnboardingBody(
      image: 'onboarding1.png',
      title: 'Accede a créditos\ncon un solo toque y sin\ncomplicaciones.'
    ),
    const OnboardingBody(
      image: 'onboarding2.png',
      title: 'Toma el control de tus finanzas con confianza y accede a ellas sin restricciones.'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: FlutterStoryView(
        flutterStoryController: controller,
        onStoryChanged: (value){
          controller.playCustomWidget();
        },
        storyViewIndicatorConfig: StoryViewIndicatorConfig(
          activeColor: Colors.white,
          height: 5,
          enableBottomSafeArea: true,
          backgroundDisabledColor: Colors.grey.withOpacity(0.8),
          horizontalGap: 5,
          margin:EdgeInsets.only(top: size.height * 0.05, left: 14, right: 14)
        ),
        items: [
          StoryItem(
            storyItemType: StoryItemType.custom,
            duration: const Duration(seconds: 10),
            customWidget: (controller, audioPlayer) {
              return screen[0];
            }
          ),
          StoryItem(
            storyItemType: StoryItemType.custom,
            duration: const Duration(seconds: 10),
            customWidget: (controller, audioPlayer) {
              return screen[1];
            }
          ),
        ],
      ),
    );
  }
}