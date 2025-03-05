import 'package:coffee_flutter/config/colors.dart';
import 'package:flutter/material.dart';

class HomeSearchbar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  
  const HomeSearchbar({required this.screenHeight, required this.screenWidth,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.07,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.05, right: screenWidth * 0.012),
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: screenHeight * 0.04,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search coffee',
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.14,
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
  }
}