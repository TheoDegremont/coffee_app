import 'package:coffee_flutter/config/assets/image_path.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 8,
                child: Image.asset(onboardingBackground),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
