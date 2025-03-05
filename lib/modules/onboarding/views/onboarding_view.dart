import 'package:coffee_flutter/config/assets/image_path.dart';
import 'package:coffee_flutter/config/colors.dart';
import 'package:coffee_flutter/modules/home/views/home_view.dart';
import 'package:coffee_flutter/utils/basic_utils.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 13,
                child: Image.asset(
                  onboardingBackground,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.38,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.0,
                        0.02,
                        0.05,
                        0.15
                      ],
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.6),
                        Colors.black,
                      ]),
                ),
              )),
          Positioned(
            bottom: screenHeight * 0.22,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.2,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              alignment: Alignment.center,
              child: Text(
                'Coffee so good, your taste buds will love it.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: screenWidth * 0.09,
                    letterSpacing: 1.1,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
              bottom: screenHeight * 0.13,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.1,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.13),
                child: Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: screenWidth * 0.04,
                    color: grey,
                  ),
                ),
              )),
          Positioned(
              bottom: screenHeight * 0.08,
              child: Container(
                width: screenWidth,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => HomeView()));
                  },
                  child: Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 131, 80, 48),
                        width: 2,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
