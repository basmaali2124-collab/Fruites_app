import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/splash_screen_background.png",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(height: 16),

              Expanded(
                flex: 3,
                child: Center(child: Image.asset('assets/images/logo.png')),
              ),

              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/splash_screen.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
