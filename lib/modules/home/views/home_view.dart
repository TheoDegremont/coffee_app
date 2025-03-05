import 'package:coffee_flutter/config/colors.dart';
import 'package:coffee_flutter/config/data/coffee_model.dart';
import 'package:coffee_flutter/modules/detail_item/views/detail_item_view.dart';
import 'package:coffee_flutter/utils/basic_utils.dart';
import 'package:coffee_flutter/utils/widgets/custom_text.dart';
import 'package:coffee_flutter/utils/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                      decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [secondaryColor, primaryColor]),
                  )),
                ),
                Expanded(flex: 6, child: Container(color: Colors.white)),
              ],
            ),
            Positioned(
                top: screenHeight * 0.1,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.customTextBasic(
                                text: 'Location',
                                fontSize: screenWidth * 0.04,
                                color: grey),
                            CustomText.customTextBasic(
                                text: 'Rouen, France',
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth * 0.15,
                          height: screenWidth * 0.15,
                          child: Image.asset(
                            'assets/images/profile_photo.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ))),
            Positioned(
              top: screenHeight * 0.2,
              child: HomeSearchbar(screenHeight: screenHeight, screenWidth: screenWidth)
            ),
            Positioned(
                top: screenHeight * 0.3,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.2,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenHeight * 0.01),
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/coffee_background.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: screenWidth * 0.2,
                        height: screenHeight * 0.05,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomText.customTextBasic(
                            text: 'Promo',
                            fontSize: screenWidth * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        width: screenWidth * 0.6,
                        child: CustomText.customTextBasic(
                            text: 'Buy one get one free',
                            fontSize: screenWidth * 0.09,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            Positioned(
              top: screenHeight * 0.52,
              child: Container(
                margin: EdgeInsets.only(left: screenWidth * 0.1),
                width: screenWidth,
                height: screenHeight * 0.07,
                child: ListView.builder(
                  itemCount: coffeeType.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                        child: Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.02),
                      alignment: Alignment.center,
                      height: screenHeight * 0.06,
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: CustomText.customTextBasic(
                          text: coffeeType[index],
                          fontSize: screenWidth * 0.05,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ));
                  },
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.zero,
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.4,
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 270),
                    itemCount: coffeeList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.01,
                            vertical: screenHeight * 0.007),
                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.025,
                            vertical: screenHeight * 0.01),
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                          color: primaryColor.withAlpha(20),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  coffeeList[index].imagePath,
                                  fit: BoxFit.contain,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: screenWidth * 0.17,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.39),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: screenHeight * 0.005),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star_rounded,
                                            color: Colors.yellow,
                                            size: screenWidth * 0.05),
                                        CustomText.customTextBasic(
                                            text: '${coffeeList[index].note}',
                                            fontSize: screenWidth * 0.04,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.02,
                                  vertical: screenHeight * 0.01),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText.customTextBasic(
                                        text: coffeeList[index].name,
                                        fontSize: screenWidth * 0.05,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    CustomText.customTextBasic(
                                        text: 'with ...',
                                        fontSize: screenWidth * 0.04,
                                        color: grey,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: screenHeight * 0.01),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText.customTextBasic(
                                              text:
                                                  '\$${coffeeList[index].price}',
                                              fontSize: screenWidth * 0.05,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DetailItemView(
                                                                itemSelected:
                                                                    coffeeList[
                                                                        index])));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        screenWidth * 0.02,
                                                    vertical:
                                                        screenHeight * 0.01),
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Icon(Icons.add,
                                                    color: Colors.white),
                                              ))
                                        ])
                                  ]),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ))
          ],
        ));
  }
}
