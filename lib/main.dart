import 'package:flutter/material.dart';
import 'package:preply_english/screens/home_screen.dart';
import 'package:preply_english/screens/onboarding_screen.dart';
import 'package:preply_english/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnboardingScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        SignInScreen.routeName: (ctx) => const SignInScreen(),
      },
    );
  }
}
