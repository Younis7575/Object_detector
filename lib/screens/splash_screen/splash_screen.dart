import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlameSplashScreen(
        onFinish: (context) => Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        ),
      theme: FlameSplashTheme.dark,
      showBefore: (BuildContext context){
        return const Text('Welcome To');
      },
      showAfter: (BuildContext context) {
         return const Text('Object Detector');
      }
    );
  }
}
