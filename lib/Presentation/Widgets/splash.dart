import 'package:flutter/material.dart';
import 'package:movie_database/Core/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackColor,
      body: Center(
        child: Image.asset('assets/lo.png'),
      ),
    );
  }
}
